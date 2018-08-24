# -*- coding: utf-8 -*-
import scrapy


class MpSpider(scrapy.Spider):
    name = 'mp'
    allowed_domains = ['18183.com']
    start_urls = ['http://18183.com/']

    def parse(self, response):
        pass
