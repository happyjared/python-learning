# -*- coding: utf-8 -*-
import re
import scrapy
from urllib import parse
from music163 import items


class PlaylistSpider(scrapy.Spider):
    name = 'playlist'
    allowed_domains = ['music.163.com']
    start_urls = ['https://music.163.com/playlist?id=2361354899']

    def parse(self, response):
        url = response.url
        self.log("Response url is %s" % url)
        item = items.Music163Item()

        song_list = response.xpath('//ul[@class="f-hide"]')
        for song in song_list:
            music_url = song.xpath('.//li/a/@href').extract_first()
            item['music_url'] = parse.urljoin(url, music_url)
            item['music_id'] = int(re.split('id=', music_url)[-1])
            item['music_name'] = song.xpath('.//li/a/text()').extract_first()

            yield item
