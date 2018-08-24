# -*- coding: utf-8 -*-
import scrapy


class TechSpider(scrapy.Spider):
    name = 'tech'
    allowed_domains = ['zealer.com']
    start_urls = ['http://zealer.com/']

    def parse(self, response):
        pass
