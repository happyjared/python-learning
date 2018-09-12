# -*- coding: utf-8 -*-
# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
from scrapys.lagou.lagou.pipelines import LaGouPipeline


class BossPipeline(LaGouPipeline):
    def __init__(self):
        super().__init__()

    def process_item(self, item, spider):
        super().process_item(item, spider)

    def close_spider(self, spider):
        super().close_spider(spider)
