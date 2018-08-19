# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

from scrapy import Item, Field


class JobItem(Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    job_id = Field()
    position_id = Field()
    city_id = Field()
    city = Field()
    job_name = Field()
    job_salary = Field()
    job_experience = Field()
    job_education = Field()
    job_advantage = Field()
    job_label = Field()
    job_description = Field()
    post_job_time = Field()
    company_id = Field()
    company_short_name = Field()
    company_full_name = Field()
    company_location = Field()
    company_latitude = Field()
    company_longitude = Field()
    company_index = Field()
    company_finance = Field()
    company_industry = Field()
    company_scale = Field()
    company_zone = Field()
    source_url = Field()


class ExpireItem(Item):
    tb_id = Field()
    tb_name = Field()
