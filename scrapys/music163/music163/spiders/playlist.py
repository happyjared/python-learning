# -*- coding: utf-8 -*-
import scrapy


class PlaylistSpider(scrapy.Spider):
    name = 'playlist'
    allowed_domains = ['music.163.com']
    start_urls = ['https://music.163.com/#/playlist?id=2361354899']

    def parse(self, response):

        pass
