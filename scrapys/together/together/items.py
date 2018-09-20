# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

from scrapy import Item, Field


class TogetherItem(Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    pass


class UserItem(Item):
    uid = Field()
    sex = Field()
    age = Field()
    phone = Field()
    nickname = Field()
    birthday = Field()
    head_pic = Field()
    voice = Field()
    available_voice = Field()
    user_last_fm_voice = Field()
    region_code = Field()
    region_information = Field()
    last_app_version = Field()
    source = Field()
    create_time = Field()
    netease_accid = Field()
    netease_token = Field()
    netease_status = Field()
    user_status = Field()
