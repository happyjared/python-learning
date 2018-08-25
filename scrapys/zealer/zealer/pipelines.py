# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
from utils import mytime
from zealer import items
from zealer.service import app, sql


class ZealerPipeline(object):
    def __init__(self) -> None:
        self.redis = app.redis()
        self.postgres = app.postgres()

    def process_item(self, item, spider):

        if isinstance(item, items.MediaItem):
            item_field = ['seriesId', 'postId', 'title', 'desc', 'label', 'coverPicture',
                          'mediaInfo', 'commentNum', 'detailUrl', 'liveTime']
            data = [item.get(field) for field in item_field]
            data.append(mytime.now_date())
            print(tuple(data))
            self.postgres.handler(sql.save_media(), tuple(data), fetch=True)
            pass

        elif isinstance(item, items.CommentItem):
            pass

        return item
