# -*- coding: utf-8 -*-
import json
import scrapy
from utils import pgs
from utils import uniid
from utils import mytime
from lagou.items import LaGouItem
from scrapy.http import Request, FormRequest


class JobSpider(scrapy.Spider):
    name = 'job'
    allowed_domains = ['www.lagou.com']

    # start_urls = ['https://www.lagou.com/jobs/positionAjax.json']

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        near_job = 'nearjob'
        postgres = pgs.Pgs(host='193.112.0.219', port=12432, db_name=near_job, user=near_job, password=near_job)
        self.city_list = postgres.fetch_all(self.get_city())
        self.type_list = postgres.fetch_all(self.get_type())
        self.start = 'https://www.lagou.com/jobs/positionAjax.json?px=default&needAddtionalResult=false&city={0}'
        self.referer = 'https://www.lagou.com/jobs/list_{0}'
        self.source_url = 'https://www.lagou.com/jobs/{0}.html'
        self.headers = {
            'Connection': 'keep-alive',
            'Accept-Encoding:': 'gzip, deflate, br',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko'
                          ') Chrome/67.0.3396.79 Safari/537.36',
            'Cookie': 'JSESSIONID=' + uniid.get_uuid4() + ';user_trace_token=' + uniid.get_uuid4()
                      + '; LGUID=' + uniid.get_uuid4() + '; index_location_city=%E6%88%90%E9%83%BD;SEARCH_ID='
                      + uniid.get_uuid4() + ';_gid=GA1.2.717841549.1514043316; _ga=GA1.2.952298646.1514043316; LGSID='
                      + uniid.get_uuid4() + ';LGRID=' + uniid.get_uuid4() + ';',
        }

    def start_requests(self):
        for kd in self.type_list:
            form_kd = kd[1]
            for city in self.city_list:
                form_city = city[1]
                form_data = {'first': 'True', 'pn': '1', 'kd': form_kd}
                self.headers['Referer'] = self.referer.format(form_kd)
                yield FormRequest(self.start.format(form_city), formdata=form_data, callback=self.parse,
                                  headers=self.headers, meta={'city_id': city[0], 'city': form_city, 'kd': form_kd})

    def parse(self, response):
        resp = json.loads(response.body_as_unicode())
        if resp.get('code') == 0:
            kd = response.meta['kd']
            city = response.meta['city']
            city_id = response.meta['city_id']

            content = resp['content']
            page_no = content['pageNo']
            page_size = content['pageSize']
            position_result = content['positionResult']
            total_count = position_result['totalCount']
            if page_no * page_size < total_count:
                # 判断和抓取下一页数据
                next_page_no = str(page_no + 1)
                form_data = {'first': 'False', 'pn': next_page_no, 'kd': kd}
                self.headers['Referer'] = self.referer.format(kd)
                yield FormRequest(self.start.format(city), formdata=form_data, callback=self.parse,
                                  headers=self.headers, meta={'city_id': city_id, 'city': city, 'kd': kd})

            result_list = position_result['result']
            for result in result_list:
                # 解析数据并抓取详情
                item = LaGouItem()

                item['city'] = city
                item['city_id'] = city_id
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
                item['companyId'] = str(result.get('companyId'))
                item['company_short_name'] = result.get('companyShortName')
                item['company_full_name'] = result.get('companyFullName')
                item['company_latitude'] = result.get('latitude')
                item['company_longitude'] = result.get('longitude')
                item['company_finance'] = result.get('financeStage')
                item['company_industry'] = result.get('industryField')
                item['company_scale'] = result.get('companySize')
                business_zones = result.get('businessZones')
                if business_zones:
                    item['company_zone'] = json.dumps(business_zones, ensure_ascii=False)
                source_url = self.source_url.format(position_id)
                item['source_url'] = source_url

                self.headers['Referer'] = None
                yield Request(source_url, meta={'item': item}, headers=self.headers, callback=self.parse_detail)

    def parse_detail(self, response):
        item = response.meta['item']

        description = response.xpath('//dd[@class="job_bt"]/div/p/text()').extract()
        item['job_description'] = '\n'.join(description)
        work_address = response.xpath('//div[@class="work_addr"]/a[not(@id="mapPreview")]/text()').extract()
        work_address_detail = response.xpath('//input[@name="positionAddress"]/@value').extract_first()
        item['company_location'] = ''.join(
            work_address) + work_address_detail  # todo compare latitude and longitude with baidu
        item['company_index'] = response.xpath('//ul[@class="c_feature"]/li/a/@href').extract_first()

        yield item

    @staticmethod
    def get_city():
        """Get all city from tb_city"""

        sql = 'select id,"name" from tb_city order by id asc'
        return sql

    @staticmethod
    def get_type():
        """Get all type from tb_type"""

        sql = 'select id,"name" from tb_type where id > 0 order by id asc'
        return sql
