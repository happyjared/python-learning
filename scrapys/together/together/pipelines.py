# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
from together.items import UserItem


class TogetherPipeline(object):
    def __init__(self) -> None:
        super().__init__()

    def process_item(self, item, spider):
        if isinstance(item, UserItem):
            pass
        return item
