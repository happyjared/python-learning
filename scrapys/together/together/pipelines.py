# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
from utils import mytime
from together.items import UserItem, UserModel


class TogetherPipeline(object):
    def process_item(self, item, spider):
        if isinstance(item, UserItem):
            uid = item.get('uid')
            UserModel.create(
                uid=uid,
                sex=item.get('sex'),
                age=item.get('age'),
                phone=item.get('phone'),
                nickname=item.get('nickname'),
                birthday=item.get('birthday'),
                head_pic=item.get('head_pic'),
                voice=item.get('voice'),
                available_voice=item.get('available_voice'),
                user_last_fm_voice=item.get('user_last_fm_voice'),
                region_code=item.get('region_code'),
                region_information=item.get('region_information'),
                last_app_version=item.get('last_app_version'),
                source=item.get('source'),
                create_time=mytime.timestamp_to_datetime(item.get('create_time')),
                netease_accid=item.get('netease_accid'),
                netease_token=item.get('netease_token'),
                netease_status=item.get('netease_status'),
                user_status=item.get('user_status'))

        return item
