# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

from scrapy import Item, Field


class MediaItem(Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    postId = Field()
    seriesId = Field()
    title = Field()
    desc = Field()
    label = Field()
    coverPicture = Field()
    mediaInfo = Field()
    commentNum = Field()
    detailUrl = Field()
    liveTime = Field()
    pass


class CommentItem(Item):
    userId = Field()
    postId = Field()
    username = Field()
    avatar = Field()
    content = Field()
    commentTime = Field()
    pass
