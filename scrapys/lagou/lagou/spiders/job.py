# -*- coding: utf-8 -*-
import scrapy


class JobSpider(scrapy.Spider):
    name = 'job'
    allowed_domains = ['www.lagou.com']
    start_urls = ['https://www.lagou.com/jobs/positionAjax.json']

    def parse(self, response):
        pass
