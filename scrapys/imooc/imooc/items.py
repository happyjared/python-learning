# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

from scrapy.item import Item, Field
from scrapy.loader.processors import TakeFirst


# 课程
class CourseItem(Item):
    # define the fields for your item here like:
    # name = scrapy.Field()

    name = Field()  # 课程名称
    difficult = Field()  # 难度级别
    student = Field()  # 学习人数
    desc = Field()  # 课程描述
    label = Field()  # 分类标签
    image_urls = Field()  # 封面图片
    detail = Field()  # 详情地址
    course_id = Field()  # 课程id
    duration = Field()  # 课程时长
    overall_score = Field()  # 综合评分
    content_score = Field()  # 内容实用
    concise_score = Field()  # 简洁易懂
    logic_score = Field()  # 逻辑清晰
    summary = Field()  # 课程简介
    teacher_nickname = Field()  # 教师昵称
    teacher_avatar = Field()  # 教师头像
    teacher_job = Field()  # 教师职位
    tip = Field()  # 课程须知
    can_learn = Field()  # 能学什么


# 课程详情
class CourseDetailItem(Item):
    course_id = Field(output_processor=TakeFirst())  # 课程id
    chapter = Field()  # 课程章节
    chapter_desc = Field()  # 章节描述
    chapter_section = Field()  # 章节小节
    chapter_section_detail = Field()  # 小节地址
    pass
