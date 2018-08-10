# -*- coding: utf-8 -*-
import re
import scrapy
from imooc import items


class ImoocCourseSpider(scrapy.Spider):
    name = 'imooc_course'
    allowed_domains = ['www.imooc.com']
    start_urls = ['https://www.imooc.com/course/list/']

    def parse(self, response):
        course_list = response.xpath('//div[@class="course-card-container"]')
        for index, course in enumerate(course_list):
            item = items.ImoocItem()
            item['course_name'] = course.xpath('.//h3[@class="course-card-name"]/text()').extract()[0]
            item['course_difficult'] = course.xpath('.//div[@class="course-card-info"]/span[1]/text()').extract()[0]
            course_student = course.xpath('.//div[@class="course-card-info"]/span[2]/text()').extract()[0]
            item['course_student'] = int(course_student)
            item['course_desc'] = course.xpath('.//p[@class="course-card-desc"]/text()').extract()[0]
            course_label = course.xpath('.//div[@class="course-label"]/label/text()').extract()
            item['course_label'] = ', '.join(course_label)
            course_banner = course.xpath('.//div[@class="course-card-top"]/img/@src').extract()[0]
            item['course_banner'] = "{0}{1}".format('https:', course_banner)
            course_detail = course.xpath('.//a/@href').extract()[0]
            item['course_detail'] = '{0}{1}'.format('https://www.imooc.com', course_detail)
            course_id = re.split('/', course_detail)[-1]
            item['course_id'] = int(course_id)
            yield item
        pass
