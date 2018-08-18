# -*- coding: utf-8 -*-
import scrapy
from scrapy.http import Request

import table
import sql
from lagou.items import ExpireItem
from lagou.spiders import job
from utils import pgs


class ExpireSpider(scrapy.Spider):
    name = 'expire'
    allowed_domains = ['www.lagou.com']

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        near_job = 'nearjob'
        self.postgres = pgs.Pgs(host='localhost', port=12432, db_name=near_job, user=near_job, password=near_job)
        self.headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko'
                          ') Chrome/67.0.3396.79 Safari/537.36',
        }

    def start_requests(self):
        for tb_name in table.NearJob.get_all_table():
            data_list = self.postgres.fetch_all(sql.get_data(tb_name), (table.SourceType.lagou.value,))
            for data in data_list:
                tb_id, source_url = data[0], data[1]

                self.headers['Cookie'] = job.JobSpider.random_cookie()
                meta = {'tb_name': tb_name, 'tb_id': tb_id}
                yield Request(source_url, headers=self.headers, meta=meta, callback=self.parse)

    def parse(self, response):
        send_btn = response.xpath('//div[@class="resume-deliver"]/a/@data-position-id').extract_first()

        if not send_btn:
            item = ExpireItem()
            item['ta_id'] = response.meta['tb_id']
            item['tb_name'] = response.meta['tb_name']

            yield item
