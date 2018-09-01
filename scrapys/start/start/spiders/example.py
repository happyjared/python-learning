# -*- coding: utf-8 -*-
import scrapy


class ExampleSpider(scrapy.Spider):
    name = 'example'  # 爬虫名称，运行的时候需指定
    allowed_domains = ['example.com']  # 允许爬取的域名
    start_urls = ['http://example.com/']  # 第一个爬取的目标网址

    def parse(self, response):
        """scrapy爬取完首个目标网页后会回调到这个方法"""

        pass
