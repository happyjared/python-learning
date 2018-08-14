# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

from scrapy import Item, Field


class Music163Item(Item):
    # define the fields for your item here like:
    # name = scrapy.Field()

    music_id = Field()
    music_name = Field()
    music_url = Field()
    music_lyric = Field()
