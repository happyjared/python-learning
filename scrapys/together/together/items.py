# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html
from peewee import *
from datetime import datetime
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


scrapy = 'scrapy'
db = PostgresqlDatabase(database=scrapy, host="localhost",
                        port=12432, user=scrapy, password=scrapy,
                        autocommit=True, autorollback=True)


# Define a model class
class UserModel(Model):
    # If none of the fields are initialized with primary_key=True,
    # an auto-incrementing primary key will automatically be created and named 'id'.
    id = PrimaryKeyField()
    uid = IntegerField()
    sex = SmallIntegerField()
    age = SmallIntegerField(null=True)
    phone = CharField(unique=True, null=True)
    nickname = CharField(null=True)
    birthday = CharField(null=True)
    head_pic = CharField(null=True)
    voice = CharField(null=True)
    available_voice = CharField(null=True)
    user_last_fm_voice = CharField(null=True)
    region_code = CharField(null=True)
    region_information = CharField(null=True)
    last_app_version = CharField(null=True)
    source = CharField(null=True)
    create_time = DateTimeField()
    netease_accid = CharField(null=True)
    netease_token = CharField(null=True)
    netease_status = SmallIntegerField(null=True)
    user_status = CharField(null=True)
    update_time = DateTimeField(default=datetime.now)

    class Meta:
        database = db
        table_name = 'tb_together_user'


db.connect()
db.create_tables(UserModel, safe=True)
