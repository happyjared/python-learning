# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
# -*- coding: utf-8 -*-
from utils import mytime
from scrapys.nearjob import items, enums, sql, app


class LaGouPipeline(object):
    def __init__(self):
        self.redis = app.redis()
        self.elastic = app.elastic()
        self.postgres = app.postgres()

    def process_item(self, item, spider):
        if isinstance(item, items.JobItem):
            company_id = item.get('company_id')
            position_id = item.get('position_id')

            key = 'nearjob:company:{}'.format(company_id)
            if not self.redis.sismember(key, position_id):

                city = item.get('city')
                job_id = item.get('job_id')
                city_id = item.get('city_id')
                tb_name = item.get('tb_name') if job_id != 0 else 'table_tmp'
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
                source_from = enums.SourceType.lagou.value
                source_url = item.get('source_url')
                now, expired = mytime.now_date(), False

                row_id = self.postgres.handler(sql.save(tb_name),
                                               (position_id, city_id, city, job_name, job_salary, job_experience,
                                                job_education, job_advantage, job_label, job_description,
                                                post_job_time, company_id, company_short_name, company_full_name,
                                                company_location, company_latitude, company_longitude,
                                                company_index, company_finance, company_industry, company_scale,
                                                company_zone, source_from, source_url, now, now, expired), fetch=True)
                if job_id != 0 and row_id:
                    self.redis.sadd(key, position_id)
                    keyword = '{} {} {} {} {} {} {} {} {}'.format(job_name, job_advantage, company_short_name,
                                                                  job_label, company_full_name, company_finance,
                                                                  company_industry, company_zone, company_location
                                                                  ).replace('None', '')
                    json_data = {"city_id": city_id, "location": {"lat": company_latitude, "lon": company_longitude},
                                 "position_id": position_id, "job_id": job_id, "source_from": source_from,
                                 "keyword": keyword, "post_job_time": post_job_time}
                    self.elastic.put_data(data_body=json_data, _id=position_id)

        elif isinstance(item, items.ExpireItem):
            tb_id, tb_name, expire_time = item['tb_id'], item['tb_name'], mytime.now_date()

            record = self.postgres.handler(sql.expire_data(tb_name), (tb_id, expire_time), fetch=True)
            if record:
                company_id, position_id = record[0], record[1]
                key = 'nearjob:company:{}'.format(company_id)
                self.redis.srem(key, position_id)
                self.elastic.remove_id(_id=position_id)

        return item

    def close_spider(self, spider):
        self.postgres.close()
