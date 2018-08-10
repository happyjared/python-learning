# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
from imooc import items
from utils import pgs


class ImoocPipeline(object):
    def __init__(self):
        self.db = pgs.Pgs(host='', port='', db_name='', user='', password='')

    def process_item(self, item, spider):
        if isinstance(item, items.ImoocItem):
            course_id = item['course_id']
            course_name = item['course_name']
            course_difficult = item['course_difficult']
            course_student = item['course_student']
            course_desc = item['course_desc']
            course_label = item['course_label']
            course_banner = item['course_banner']
            course_detail = item['course_detail']
            sql = "insert into tb_imooc(course_id,course_name,course_difficult,course_student,course_desc," \
                  "course_label,course_banner,course_detail) values(%s,%s,%s,%s,%s,%s,%s,%s)"
            self.db.handler(sql, (course_id, course_name, course_difficult, course_student, course_desc, course_label,
                                  course_banner, course_detail))
        return item
