# -*- coding: utf-8 -*-
import json
from urllib import parse

import scrapy
from scrapy.http import Request

from utils import mapapi, mytime
from scrapys.nearjob import sql, items, app, enums


class JobSpider(scrapy.Spider):
    name = 'job'
    allowed_domains = ['www.zhipin.com', 'api.map.baidu.com']

    # start_urls = ['https://www.zhipin.com/']

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.postgres = app.postgres()
        self.city_list = self.postgres.fetch_all(sql.get_city())
        self.job_list = self.postgres.fetch_all(sql.get_job())
        self.index = "https://www.zhipin.com"
        self.start = 'https://www.zhipin.com/c{}-p{}/?page=1'

    def start_requests(self):
        for job in self.job_list:
            job_id, job_name, job_code, tb_name = job
            for city in self.city_list:
                city_id, city, city_code = city
                meta = {'city_id': city_id, 'city': city, 'job_id': job_id, 'tb_name': tb_name}
                yield Request(self.start.format(city_code, job_code), meta=meta, callback=self.parse)

    def parse(self, response):
        url = response.url
        meta = response.meta
        city, city_id = meta['city'], meta['city_id']
        job_id, tb_name = meta['job_id'], meta['tb_name']

        job_list = response.xpath('//div[@class="job-list"]/ul/li')
        for job in job_list:
            item = items.JobItem()

            item['source_from'] = enums.SourceType.boss.value
            item['city'], item['city_id'] = city, city_id
            item['job_id'], item['tb_name'] = job_id, tb_name

            job_primary = job.xpath('.//div[@class="job-primary"]/div[@class="info-primary"]')
            position = job_primary.xpath('.//h3/a/@href').extract_first()
            item['position_id'] = position.split('/')[2].replace('.html', '')
            item['job_name'] = job_primary.xpath('.//h3/a/div[@class="job-title"]/text()').extract_first()
            item['job_salary'] = job_primary.xpath('.//h3/a/span[@class="red"]/text()').extract_first()
            p_list = job_primary.xpath('.//p/text()').extract()
            item['company_zone'] = json.dumps(p_list[0].split(' '), ensure_ascii=False)
            item['job_experience'], item['job_education'] = p_list[1:]

            info_company = job.xpath('.//div[@class="job-primary"]/div[@class="info-company"]')
            item['company_id'] = info_company.xpath('.//div[@class="company-text"]/h3/a/@href') \
                .extract_first().split('/')[2].replace('.html', '')
            item['company_short_name'] = info_company.xpath('.//div[@class="company-text"]/h3/a/text()').extract_first()
            c_list = info_company.xpath('.//div[@class="company-text"]/p/text()').extract()
            item['company_finance'] = next(iter(c_list[0:]), None)
            item['company_industry'] = next(iter(c_list[1:]), None)
            item['company_scale'] = next(iter(c_list[2:]), None)
            source_url = parse.urljoin(url, position)
            item['source_url'] = source_url

            yield Request(source_url, meta={'item': item}, callback=self.parse_detail)

        # 下一页
        next_page = response.xpath('//a[@class="next" and not(@class="disabled")]/@href').extract_first()
        if next_page:
            yield Request(self.index.format(next_page), meta=meta, callback=self.parse)

    def parse_detail(self, response):
        item = response.meta['item']

        item['company_full_name'] = response.xpath('//div[@class="job-sec"]/div[@class="name"]/text()').extract_first()
        item['company_index'] = response.xpath('//div[@class="info-company"]/p[2]/text()').extract_first()
        job_tags = response.xpath('//div[@class="job-sec"]/div[@class="job-tags"]/span/text()').extract()
        item['job_advantage'] = ' '.join(job_tags)
        job_label = response.xpath('//div[@class="info-primary"]/div[@class="job-tags"]/span/text()').extract()
        item['job_label'] = json.dumps(job_label, ensure_ascii=False)
        job_desc = response.xpath('//div[@class="text"]/text()').extract()
        item['job_description'] = '\n'.join(map(str.strip, job_desc))
        post_time = response.xpath('//span[@class="time"]/text()').extract_first().replace('发布于', '')
        item['post_job_time'] = mytime.str_to_date_with_format(post_time, '%Y-%m-%d %H:%M')
        address = response.xpath('//div[@class="location-address"]/text()').extract_first().replace(' ', '')
        item['company_location'] = address
        item['company_logo'] = response.xpath('//div[@class="info-company"]/div/a/img/@src').extract_first()

        yield Request(mapapi.getApi(address), meta={'item': item}, callback=self.handle_location)

    @staticmethod
    def handle_location(response):
        item = response.meta['item']
        resp = json.loads(response.body_as_unicode())

        status = resp['status']
        if 0 == status:
            result = resp['result']
            location = result['location']
            item['company_latitude'] = location['lat']  # 纬度
            item['company_longitude'] = location['lng']  # 经度
        else:
            item['job_id'] = 0

        yield item
