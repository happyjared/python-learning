# -*- coding: utf-8 -*-
import re
from urllib import parse

import scrapy
from scrapy.http import Request

from imooc.items import *


class CourseSpider(scrapy.Spider):
    name = 'course'
    allowed_domains = ['www.imooc.com']
    start_urls = ['https://www.imooc.com/course/list/?page=0']
    https = "https:"

    def parse(self, response):
        url = response.url
        self.log("Response url is %s" % url)

        # 根据Scrapy默认的后入先出(LIFO)深度爬取策略，这里应先提交下一页请求
        next_btn = response.xpath('//a[contains(.//text(),"下一页")]/@href').extract_first()
        if next_btn:
            # 存在下一页按钮，爬取下一页
            next_page = parse.urljoin(url, next_btn)
            yield Request(next_page, callback=self.parse)

        course_list = response.xpath('//div[@class="course-card-container"]')
        for index, course in enumerate(course_list):
            course_item = CourseItem()
            # 课程名称
            course_item['name'] = course.xpath('.//h3[@class="course-card-name"]/text()').extract_first()
            # 课程难度
            course_item['difficult'] = course.xpath(
                './/div[@class="course-card-info"]/span[1]/text()').extract_first()
            # 学习人次
            course_student = course.xpath('.//div[@class="course-card-info"]/span[2]/text()').extract_first()
            course_item['student'] = int(course_student)
            # 课程描述
            course_item['desc'] = course.xpath('.//p[@class="course-card-desc"]/text()').extract_first()
            # 课程分类
            course_label = course.xpath('.//div[@class="course-label"]/label/text()').extract()
            course_item['label'] = ', '.join(course_label)
            # 课程封面
            course_banner = course.xpath('.//div[@class="course-card-top"]/img/@src').extract_first()
            course_item['image_urls'] = ["{0}{1}".format(CourseSpider.https, course_banner)]
            # 详情地址
            course_detail = course.xpath('.//a/@href').extract_first()
            course_item['detail'] = parse.urljoin(url, course_detail)
            # 课程id
            course_id = re.split('/', course_detail)[-1]
            course_item['course_id'] = int(course_id)
            self.log("Item: %s" % course_item)
            # 爬取详情页
            yield Request(course_item['detail'], callback=self.parse_detail, meta={'course_item': course_item})

    def parse_detail(self, response):
        """ Spider course detail page
        
        :param response: 
        :return: 
        """
        url = response.url
        self.log("Response url is %s" % url)

        course_item = response.meta['course_item']
        meta_value = response.xpath('//span[@class="meta-value"]/text()').extract()
        # 课程时长
        course_item['duration'] = meta_value[1].strip()
        # 综合得分
        course_item['overall_score'] = meta_value[2]
        # 内容实用
        course_item['content_score'] = meta_value[3]
        # 简洁易懂
        course_item['concise_score'] = meta_value[4]
        # 逻辑清晰
        course_item['logic_score'] = meta_value[5]
        # 课程简介
        course_item['summary'] = response.xpath('//div[@class="course-description course-wrap"]/text()') \
            .extract_first().strip()
        # 教师昵称
        course_item['teacher_nickname'] = response.xpath('//span[@class="tit"]/a/text()').extract_first()
        # 教师头像
        avatar = response.xpath('//img[@class="js-usercard-dialog"]/@src').extract_first()
        if avatar:
            course_item['teacher_avatar'] = "{0}{1}".format(CourseSpider.https, avatar)
        # 教师职位
        course_item['teacher_job'] = response.xpath('//span[@class="job"]/text()').extract_first()
        # 课程须知
        course_item['tip'] = response.xpath('//dl[@class="first"]/dd/text()').extract_first()
        # 能学什么
        course_item['can_learn'] = response.xpath(
            '//div[@class="course-info-tip"]/dl[not(@class)]/dd/text()').extract_first()
        yield course_item

        # course_detail_item = CourseDetailItem()
        # # 课程id
        # course_detail_item['course_id'] = course_item['course_id']
        #
        # course_wrap_list = response.xpath('//div[@class="chapter course-wrap "]')
        # for course_wrap in course_wrap_list:
        #     # 课程章节
        #     course_detail_item['chapter'] = course_wrap.xpath('.//h3/text()').extract_first()
        #     # 章节描述(去空格和\r\n)
        #     course_detail_item['chapter_desc'] = course_wrap.xpath(
        #         './/div[@class="chapter-description"]/text()').extract_first()
        #     # 章节小节(去无效行, 空格和\r\n)
        #     course_detail_item['chapter_section'] = course_wrap.xpath(
        #         './/a[@class="J-media-item"]/text()').extract()
        #     # 小节地址
        #     section_detail = course_wrap.xpath('.//a[@class="J-media-item"]/@href').extract()
        #     course_detail_item['chapter_section_detail'] = section_detail
        #     yield course_detail_item
