# -*- coding: utf-8 -*-
import scrapy
from zealer.service import app, sql


class TechSpider(scrapy.Spider):
    name = 'tech'
    allowed_domains = ['zealer.com']

    # start_urls = ['https://zealer.com/']

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.postgres = app.postgres()
        self.series_list = self.postgres.fetch_all(sql.get_series())
        self.sift = 'http://www.zealer.com/x/sift?cid=&page=2&order=created_at'

    def start_requests(self):
        for series in self.series_list:
            pass
        pass

    def parse(self, response):
        pass
