# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
from zealer import items


class ZealerPipeline(object):
    def __init__(self) -> None:
        pass

    def process_item(self, item, spider):

        if isinstance(item, items.MediaItem):
            pass

        elif isinstance(item, items.CommentItem):
            pass

        return item
