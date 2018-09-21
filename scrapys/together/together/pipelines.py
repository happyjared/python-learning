# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
from utils import mytime, rds
from together.items import UserItem, UserModel


class TogetherPipeline(object):
    def __init__(self) -> None:
        self.redis = rds.Rds(host='localhost', port=12379, db=5, password='redis6379').redis_cli

    def process_item(self, item, spider):
        if isinstance(item, UserItem):
            uid = item.get('uid')
            start = int(uid / 1000) * 1000
            end = start + 999
            key = "together:uid:{}:{}".format(start, end)

            if not self.redis.sismember(key, uid):
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
                self.redis.sadd(key, uid)
            else:
                UserModel.update({
                    UserModel.sex: item.get('sex'),
                    UserModel.age: item.get('age'),
                    UserModel.phone: item.get('phone'),
                    UserModel.nickname: item.get('nickname'),
                    UserModel.birthday: item.get('birthday'),
                    UserModel.head_pic: item.get('head_pic'),
                    UserModel.voice: item.get('voice'),
                    UserModel.available_voice: item.get('available_voice'),
                    UserModel.user_last_fm_voice: item.get('user_last_fm_voice'),
                    UserModel.region_code: item.get('region_code'),
                    UserModel.region_information: item.get('region_information'),
                    UserModel.last_app_version: item.get('last_app_version'),
                    UserModel.source: item.get('source'),
                    UserModel.update_time: mytime.now_date(),
                }).where(UserModel.uid == uid).execute()
        return item
