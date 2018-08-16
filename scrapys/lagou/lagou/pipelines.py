# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
from const import nearjob
from lagou import items
from lagou.spiders import sql
from utils import pgs, rds, mytime


class LaGouPipeline(object):

    def __init__(self):
        host = 'localhost'
        nearjob = 'nearjob'
        self.postgres = pgs.Pgs(host=host, port=12432, db_name=nearjob, user=nearjob, password=nearjob)
        self.redis = rds.Rds(host=host, port=12379, db=3, password='redis6379').redis_cli

    def process_item(self, item, spider):
        if isinstance(item, items.LaGouItem):
            position_id = item.get('position_id')
            city_id = item.get('city_id')
            type_id = item.get('type_id')
            city = item.get('city')
            job_name = item.get('job_name')
            job_salary = item.get('job_salary')
            job_experience = item.get('job_experience')
            job_education = item.get('job_education')
            job_advantage = item.get('job_advantage')
            job_label = item.get('job_label')
            job_description = item.get('job_description')
            post_job_time = item.get('post_job_time')
            company_id = item.get('company_id')
            company_short_name = item.get('company_short_name')
            company_full_name = item.get('company_full_name')
            company_location = item.get('company_location')
            company_latitude = item.get('company_latitude')
            company_longitude = item.get('company_longitude')
            company_index = item.get('company_index')
            company_finance = item.get('company_finance')
            company_industry = item.get('company_industry')
            company_scale = item.get('company_scale')
            company_zone = item.get('company_zone')
            source_from = nearjob.SourceType.lagou.value
            source_url = item.get('source_url')
            now = mytime.now_date()
            expired = False

            effect_count = self.postgres.handler(sql.save(type_id),
                                                 (position_id, city_id, city, job_name, job_salary, job_experience,
                                                  job_education, job_advantage, job_label, job_description,
                                                  post_job_time, company_id, company_short_name, company_full_name,
                                                  company_location, company_latitude, company_longitude,
                                                  company_index, company_finance, company_industry, company_scale,
                                                  company_zone, source_from, source_url, now, now, expired))
            if effect_count > 0:
                pass

        if isinstance(item, items.ExpireItem):
            tb_id = item['tb_id']
            tb_name = item['tb_name']
            expire_time = mytime.now_date()

            effect_count = self.postgres.handler(sql.expire_data(tb_name), (tb_id, expire_time))
            if effect_count > 0:
                pass

        return item

    def close_spider(self, spider):
        self.postgres.close()
