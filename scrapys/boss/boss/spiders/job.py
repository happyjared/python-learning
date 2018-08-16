# -*- coding: utf-8 -*-
import scrapy
from boss.spiders import sql
from utils import pgs
from scrapy.http import Request
from boss.items import BossItem
from urllib import parse


class JobSpider(scrapy.Spider):
    name = 'job'
    allowed_domains = ['www.zhipin.com', 'api.map.baidu.com']

    # start_urls = ['https://www.zhipin.com/']

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        near_job = 'nearjob'
        self.postgres = pgs.Pgs(host='localhost', port=12432, db_name=near_job, user=near_job, password=near_job)
        self.city_list = self.postgres.fetch_all(sql.get_city())
        self.type_list = self.postgres.fetch_all(sql.get_type())
        self.start = 'https://www.zhipin.com/c{0}-p{1}/'

    def start_requests(self):
        for type in self.type_list:
            type_id = type[0]
            type_code = type[2]
            for city in self.city_list:
                city_id = city[0]
                city_code = city[2]

                meta = {'city_id': city_id, 'city': city[1], 'type_id': type_id}
                yield Request(self.start.format(city_code, type_code), meta=meta, callback=self.parse)

    def parse(self, response):
        url = response.url
        city = response.meta('city')
        city_id = response.meta('city_id')
        type_id = response.meta('type_id')

        job_list = response.xpath('//div[@class="job-list"]/ul/li')
        for job in job_list:
            item = BossItem()

            item['city'] = city
            item['city_id'] = city_id
            item['type_id'] = type_id

            job_primary = job.xpath('.//div[@class="job-primary"]/div[@class="info-primary"]').extract_first()
            position_id = job_primary.xpath('.//h3/a/@href').extract_first()
            # /job_detail/33bcf9e9da92645d1XVy3NS0EVM~.html
            item['position_id'] = position_id
            item['job_name'] = job_primary.xpath('.//h3/a/div[@class="job-title"]/text()').extract_first()
            item['job_salary'] = job_primary.xpath('.//h3/a/span[@class="red"]/text()').extract_first()
            item['job_experience'] = job_primary.xpath('.//p/text()').extract_first()
            item['job_education'] = job_primary.xpath('.//p/text()').extract_first()

            # 发布于07月17日
            item['post_job_time'] = job.xpath('.//div[@class="info-publis"]/p/text()').extract_first()

            info_company = job.xpath('.//div[@class="job-primary"]/div[@class="info-company"]').extract_first()
            # /gongsi/d2ba1c1af8bc62f003Z_2dW-.html
            item['company_id'] = info_company.xpath('.//div[@class="company-text"]/h3/a/@href').extract_first()
            item['company_short_name'] = info_company.xpath('.//div[@class="company-text"]/h3/a/text()').extract_first()
            item['company_full_name'] = None
            item['company_latitude'] = None
            item['company_longitude'] = None
            item['company_finance'] = info_company.xpath('.//div[@class="company-text"]/p/text()').extract_first()
            item['company_industry'] = info_company.xpath('.//div[@class="company-text"]/p/text()').extract_first()
            item['company_scale'] = info_company.xpath('.//div[@class="company-text"]/p/text()').extract_first()
            item['source_url'] = parse.urljoin(url, position_id)

    def close(self, spider, reason):
        self.postgres.close()
        return super().close(spider, reason)
