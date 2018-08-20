# -*- coding: utf-8 -*-
import scrapy
from scrapy.http import Request

from nearjob import sql, table, items, app


class ExpireSpider(scrapy.Spider):
    name = 'expire'
    allowed_domains = ['www.zhipin.com']

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.postgres = app.postgres()

    def start_requests(self):
        for job in self.postgres.handler(sql.get_job()):
            tb_name = job[3]
            data_list = self.postgres.fetch_all(sql.get_data(tb_name), (table.SourceType.boss.value,))
            for data in data_list:
                tb_id, source_url = data[0], data[1]

                meta = {'tb_name': tb_name, 'tb_id': tb_id}
                yield Request(source_url, meta=meta, callback=self.parse)

    def parse(self, response):
        send_btn = response.xpath('//a[@class="btn btn-startchat"]/@redirect-url').extract_first()

        if not send_btn:
            item = items.ExpireItem()
            item['ta_id'] = response.meta['tb_id']
            item['tb_name'] = response.meta['tb_name']

            yield item
