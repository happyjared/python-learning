# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
from imooc import items
from utils import pgs

postgres = pgs.Pgs(host='', port='', db_name='', user='', password='')


class ImoocPipeline(object):
    def process_item(self, item, spider):
        if isinstance(item, items.ImoocItem):
            course_name = item['course_name']
            course_difficult = item['course_difficult']
            course_student = item['course_student']
            course_desc = item['course_desc']
            course_label = item['course_label']
            course_banner = item['course_banner']
            course_detail = item['course_detail']
            course_id = item['course_id']
            sql = "insert into tb_imooc(`course_id`,`course_name`,`course_difficult`,`course_student`,`course_desc`) " \
                  "values(%s,%s,%s,%s,%s,%s,%s,%s)".format(course_id, course_name, course_difficult, course_student, course_desc)
            pass
        return item
