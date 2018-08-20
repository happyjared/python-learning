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
    # start_urls = ['https://music.163.com/playlist?id=2068331353']
    start_urls = ['https://music.163.com/discover/playlist']

    def parse(self, response):
        url = response.url
        self.log("Response url is %s" % url)

        next_btn = response.xpath('//a[@class="zbtn znxt" and not(@class="js-disabled")]/@href').extract_first()
        if next_btn:
            next_page = parse.urljoin(url, next_btn)
            yield Request(next_page, callback=self.parse)

        playlist = response.xpath('//ul[@id="m-pl-container"]/li')
        for play in playlist:
            href = play.xpath('.//a[@class="msk"]/@href').extract_first()
            detail = parse.urljoin(url, href)
            # 爬取具体歌曲
            yield Request(detail, callback=self.parse_detail)

    def parse_detail(self, response):
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
