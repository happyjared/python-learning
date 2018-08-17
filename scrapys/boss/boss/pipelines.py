# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
from lagou.pipelines import LaGouPipeline


class BossPipeline(object):
    def process_item(self, item, spider):
        LaGouPipeline.process_item(item, spider)
        return item

    def close_spider(self, spider):
        self.postgres.close()
