# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class ImoocItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    course_name = scrapy.Field()  # 课程名
    course_difficult = scrapy.Field()  # 难度级别
    course_student = scrapy.Field()  # 学习人数
    course_desc = scrapy.Field()  # 课程描述
    course_label = scrapy.Field()  # 分类标签
    course_banner = scrapy.Field()  # 封面图
    course_detail = scrapy.Field()  # 课程详情
    course_id = scrapy.Field()  # 课程id
