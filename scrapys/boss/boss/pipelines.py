# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
from boss import items
from const import nearjob
from lagou.spiders import sql
from utils import pgs, rds, mytime, es


class BossPipeline(object):
    def __init__(self):
        host = 'localhost'
        near_job = 'nearjob'
        self.postgres = pgs.Pgs(host=host, port=12432, db_name=near_job, user=near_job, password=near_job)
        self.redis = rds.Rds(host=host, port=12379, db=3, password='redis6379').redis_cli
        self.elastic = es.Es(host=host, port=12900, index=near_job)

    def process_item(self, item, spider):
        if isinstance(item, items.BossItem):
            company_id = item.get('company_id')
            position_id = item.get('position_id')

            key = 'nearjob:company:{0}'.format(company_id)
            if not self.redis.sismember(key, position_id):

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

                row_id = self.postgres.handler(sql.save(type_id),
                                               (position_id, city_id, city, job_name, job_salary, job_experience,
                                                job_education, job_advantage, job_label, job_description,
                                                post_job_time, company_id, company_short_name, company_full_name,
                                                company_location, company_latitude, company_longitude,
                                                company_index, company_finance, company_industry, company_scale,
                                                company_zone, source_from, source_url, now, now, expired))
                if row_id:
                    self.redis.sadd(key, position_id)
                    keyword = '{0} {1} {2} {3}'.format(job_name, job_advantage, company_industry, company_zone)
                    json_data = {'city_id': city_id, 'location': {"lat": company_latitude, "lon": company_longitude},
                                 "source_from": source_from, "keyword": keyword}
                    self.elastic.put_data(data_body=json_data, _id=row_id)

        if isinstance(item, items.ExpireItem):
            tb_id = item['tb_id']
            tb_name = item['tb_name']
            expire_time = mytime.now_date()

            record = self.postgres.handler(sql.expire_data(tb_name), (tb_id, expire_time), fetch=True)
            if record:
                company_id = record[0]
                position_id = record[1]
                key = 'nearjob:company:{0}'.format(company_id)
                self.redis.srem(key, position_id)

        return item

    def close_spider(self, spider):
        self.postgres.close()
