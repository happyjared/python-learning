# -*- coding: utf-8 -*-
import scrapy


class JobSpider(scrapy.Spider):
    name = 'job'
    allowed_domains = ['www.lagou.com']
    start_urls = ['http://www.lagou.com/']

    def parse(self, response):
        pass
