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
            series_id, post_id = item.get('seriesId'), item.get('postId')
            key = "zealer:seriesId:{}".format(series_id)

            if not self.redis.sismember(key, post_id):

                item_field = ['title', 'desc', 'label', 'coverPicture',
                              'mediaInfo', 'commentNum', 'detailUrl', 'liveTime']
                data = [item.get(field) for field in item_field]
                data.insert(0, series_id), data.insert(1, post_id), data.append(mytime.now_date())

                effect_count = self.postgres.handler(sql.save_media(), tuple(data))
                if effect_count:
                    self.redis.sadd(key, post_id)

        elif isinstance(item, items.CommentItem):
            post_id, user_id = item.get('postId'), item.get('userId')
            key = "zealer:postId:{}".format(post_id)

            if not self.redis.sismember(key, user_id):
                item_field = ['username', 'avatar', 'content', 'commentTime']
                data = [item.get(field) for field in item_field]
                data.insert(0, post_id), data.append(user_id), data.append(mytime.now_date())

                effect_count = self.postgres.handler(sql.save_comment(), tuple(data))
                if effect_count:
                    self.redis.sadd(key, user_id)

        return item
