# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
import psycopg2
from utils import rds
from imooc import items
from datetime import datetime


class ImoocPipeline(object):
    def __init__(self):
        # PostgreSQL
        host = 'localhost'
        port = 12432
        db_name = 'scrapy'
        username = db_name
        password = db_name
        self.conn = psycopg2.connect(host=host, port=port, user=username,
                                     password=password, dbname=db_name)
        self.cur = self.conn.cursor()
        # Redis
        self.redis = rds.Rds(host=host, port=12379, db=1, password='redis6379').redis_cli

    def process_item(self, item, spider):
        if isinstance(item, items.CourseItem):
            course_id = item['course_id']
            name = item['name']
            difficult = item['difficult']
            student = item['student']
            desc = item['desc']
            label = item['label']
            image_urls = item['image_urls'][0]
            detail = item['detail']
            duration = item['duration']
            overall_score = float(item['overall_score'])
            content_score = float(item['content_score'])
            concise_score = float(item['concise_score'])
            logic_score = float(item['logic_score'])
            summary = item['summary']
            teacher_nickname = item['teacher_nickname']
            teacher_avatar = item.get('teacher_avatar')
            teacher_job = item['teacher_job']
            tip = item['tip']
            can_learn = item['can_learn']
            now = datetime.now()

            key = 'imooc:course:{0}'.format(course_id)
            if self.redis.exists(key):
                params = (student, overall_score, content_score, concise_score, logic_score,
                          teacher_nickname, teacher_avatar, teacher_job, now, course_id)
                self.cur.execute(update_course(), params)
            else:
                self.redis.set(key, now.strftime('%Y-%m-%d %H:%M:%S'))
                params = (course_id, name, difficult, student, desc, label, image_urls, detail, duration,
                          overall_score, content_score, concise_score, logic_score, summary, teacher_nickname,
                          teacher_avatar, teacher_job, tip, can_learn, now, now)
                self.cur.execute(add_course(), params)
            self.conn.commit()
        return item

    def close_spider(self, spider):
        """ Release connection
        
        :param spider: 
        :return: 
        """
        self.cur.close()
        self.conn.close()


def add_course():
    """Save data to Course
    
    :return: 
    """

    sql = 'insert into tb_imooc_course(course_id,"name",difficult,student,"desc",label,image_urls,' \
          'detail,duration,overall_score,content_score,concise_score,logic_score,summary,' \
          'teacher_nickname,teacher_avatar,teacher_job,tip,can_learn,update_time,create_time) ' \
          'values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'
    return sql


def update_course():
    """Update Course data
    
    :return: 
    """

    sql = 'update tb_imooc_course set student=%s,overall_score=%s,content_score=%s,concise_score=%s,' \
          'logic_score=%s,teacher_nickname=%s,teacher_avatar=%s,teacher_job=%s,update_time=%s where ' \
          'course_id = %s'
    return sql
