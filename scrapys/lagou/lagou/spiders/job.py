# -*- coding: utf-8 -*-
import json
import math

import scrapy
from scrapy.http import Request, FormRequest

import sql
from nearjob import app, items
from utils import uniid, mytime, mapapi


class JobSpider(scrapy.Spider):
    name = 'job'
    allowed_domains = ['www.lagou.com', 'api.map.baidu.com']

    # start_urls = ['https://www.lagou.com/jobs/positionAjax.json']

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.postgres = app.postgres()
        self.city_list = self.postgres.fetch_all(sql.get_city())
        self.job_list = self.postgres.fetch_all(sql.get_job())
        self.start = 'https://www.lagou.com/jobs/positionAjax.json?px=default&needAddtionalResult=false&city={0}'
        self.referer = 'https://www.lagou.com/jobs/list_{0}'
        self.source_url = 'https://www.lagou.com/jobs/{0}.html'
        self.headers = {
            'Connection': 'keep-alive',
            'Accept-Encoding:': 'gzip, deflate, br',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko'
                          ') Chrome/67.0.3396.79 Safari/537.36',
        }

    def start_requests(self):
        for kd in self.job_list:
            job_id, job_name, tb_name = kd[0], kd[1], kd[3]
            for city in self.city_list:
                form_city = city[1]
                form_data = {'first': 'True', 'pn': '1', 'kd': job_name}
                self.headers['Referer'] = self.referer.format(job_name)
                self.headers['Cookie'] = self.random_cookie()
                meta = {'city_id': city[0], 'city': form_city, 'job_name': job_name, 'job_id': job_id,
                        'tb_name': tb_name}
                yield FormRequest(self.start.format(form_city), formdata=form_data, callback=self.parse,
                                  headers=self.headers, meta=meta)

    def parse(self, response):
        resp = json.loads(response.body_as_unicode())
        if 0 == resp.get('code'):
            job_name, job_id = response.meta['job_name'], response.meta['job_id']
            tb_name, city, city_id = response.meta['tb_name'], response.meta['city'], response.meta['city_id']

            content = resp['content']
            page_no = content['pageNo']
            page_size = content['pageSize']
            position_result = content['positionResult']
            total_count = position_result['totalCount']
            if page_no * page_size < total_count:
                # 判断和抓取下一页数据
                next_page_no = str(page_no + 1)
                form_data = {'first': 'False', 'pn': next_page_no, 'kd': job_name}
                self.headers['Referer'] = self.referer.format(job_name)
                self.headers['Cookie'] = self.random_cookie()
                meta = {'city_id': city_id, 'city': city, 'job_name': job_name, 'job_id': job_id, 'tb_name': tb_name}
                yield FormRequest(self.start.format(city), formdata=form_data, callback=self.parse,
                                  headers=self.headers, meta=meta)

            result_list = position_result['result']
            for result in result_list:
                # 解析数据并抓取详情
                item = items.JobItem()

                item['city'], item['city_id'] = city, city_id
                item['job_id'], item['tb_name'] = job_id, tb_name
                position_id = result.get('positionId')
                item['position_id'] = str(position_id)
                item['job_name'] = result.get('positionName')
                item['job_salary'] = result.get('salary')
                item['job_experience'] = result.get('workYear')
                item['job_education'] = result.get('education')
                item['job_advantage'] = result.get('positionAdvantage')
                position_labels = result.get('positionLables')
                if position_labels:
                    item['job_label'] = json.dumps(position_labels, ensure_ascii=False)
                item['post_job_time'] = mytime.str_to_date(result.get('createTime'))
                item['company_id'] = str(result.get('companyId'))
                item['company_short_name'] = result.get('companyShortName')
                item['company_full_name'] = result.get('companyFullName')
                latitude = result.get('latitude')
                longitude = result.get('longitude')
                item['company_latitude'] = float(latitude) if latitude else .0
                item['company_longitude'] = float(longitude) if longitude else .0
                item['company_finance'] = result.get('financeStage')
                item['company_industry'] = result.get('industryField')
                item['company_scale'] = result.get('companySize')
                item['company_zone'] = result.get('businessZones')
                source_url = self.source_url.format(position_id)
                item['source_url'] = source_url

                self.headers['Referer'] = ''
                yield Request(source_url, meta={'item': item},
                              headers=self.headers, callback=self.parse_detail)

    def parse_detail(self, response):
        item = response.meta['item']

        description = response.xpath('//dd[@class="job_bt"]/div/p/text()').extract()
        item['job_description'] = '\n'.join(map(str.strip, description))
        work_address = response.xpath('//div[@class="work_addr"]/a[not(@id="mapPreview")]/text()').extract()
        work_address_detail = response.xpath('//input[@name="positionAddress"]/@value').extract_first()
        address = '{0}{1}'.format(''.join(work_address), work_address_detail)
        item['company_location'] = address
        item['company_index'] = response.xpath('//ul[@class="c_feature"]/li/a/@href').extract_first()

        yield Request(mapapi.getApi(address), meta={'item': item}, callback=self.handle_location)

    @staticmethod
    def handle_location(response):
        """ Compare lng and lat with Baidu API

        :param response:
        :return:
        """

        item = response.meta['item']
        resp = json.loads(response.body_as_unicode())

        status = resp['status']
        if 0 == status:
            result = resp['result']
            location = result['location']
            lat = location['lat']  # 纬度
            lng = location['lng']  # 经度
            diff_lat = math.fabs(item['company_latitude'] - lat)
            diff_lng = math.fabs(item['company_longitude'] - lng)
            if .1 < diff_lat < .5 and .1 < diff_lng < .5:
                item['job_id'] = 0  # 将数据归类为table_tmp数据
            else:
                item['company_latitude'] = lat
                item['company_longitude'] = lng

        yield item

    @staticmethod
    def random_cookie():
        """Return random cookie"""

        cookie = 'JSESSIONID={0};user_trace_token={1}; LGUID={2}; index_location_city=%E6%88%90%E9%83%BD;' \
                 'SEARCH_ID={3};_gid=GA1.2.717841549.1514043316; _ga=GA1.2.952298646.1514043316; LGSID={4};' \
                 'LGRID={5};'.format(uniid.get_uuid4(), uniid.get_uuid4(), uniid.get_uuid4(), uniid.get_uuid4(),
                                     uniid.get_uuid4(), uniid.get_uuid4())
        return cookie
