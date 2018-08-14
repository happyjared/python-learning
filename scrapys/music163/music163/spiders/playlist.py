# -*- coding: utf-8 -*-
import re
import scrapy
from urllib import parse
from music163 import items
from music163.util import imjad
from scrapy.http import Request
from scrapy.http import FormRequest


class PlaylistSpider(scrapy.Spider):
    name = 'playlist'
    allowed_domains = ['music.163.com']
    start_urls = ['https://music.163.com/playlist?id=2068331353']

    def parse(self, response):
        url = response.url
        self.log("Response url is %s" % url)
        item = items.Music163Item()

        song_list = response.xpath('//div[@id="song-list-pre-cache"]/ul[@class="f-hide"]/li')
        for song in song_list:
            music_url = song.xpath('.//a/@href').extract_first()
            item['music_url'] = parse.urljoin(url, music_url)
            music_id = int(re.split('id=', music_url)[-1])
            item['music_id'] = music_id
            item['music_name'] = song.xpath('.//a/text()').extract_first()
            item['music_lyric'] = imjad.get_lyric(music_id)

            yield item
