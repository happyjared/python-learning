# -*- coding: utf-8 -*-
import scrapy


class JobSpider(scrapy.Spider):
    name = 'job'
    allowed_domains = ['www.zhipin.com', 'api.map.baidu.com']
    start_urls = ['https://www.zhipin.com/']

    def parse(self, response):
        pass
