# -*- coding: utf-8 -*-
import re
from urllib import parse

import scrapy
from scrapy.http import Request

from imooc.items import *


class CodingSpider(scrapy.Spider):
    name = 'coding'
    allowed_domains = ['coding.imooc.com']
    start_urls = ['https://coding.imooc.com/?page=0']
    https = "https:"

    def parse(self, response):
        url = response.url
        self.log("Response url is %s" % url)

        next_btn = response.xpath('//a[contains(.//text(),"下一页")]/@href').extract_first()
        if next_btn:
            next_page = parse.urljoin(url, next_btn)
            yield Request(next_page, callback=self.parse)

        coding_list = response.xpath('//div[@class="shizhan-course-wrap l "]')
        for index, coding in enumerate(coding_list):
            coding_item = CodingItem()
            # 课程名称
            coding_item['name'] = coding.xpath('.//p[@class="shizan-name"]/text()').extract_first()
            # 课程难度
            coding_item['difficult'] = coding.xpath('.//span[@class="grade"]/text()').extract_first()
            # 学习人次
            coding_student = coding.xpath('.//div[@class="shizhan-info"]/span[2]/text()').extract_first()
            coding_item['student'] = int(coding_student)
            # 课程描述
            coding_item['desc'] = coding.xpath('.//p[@class="shizan-desc"]/text()').extract_first()
            # 课程封面
            coding_banner = coding.xpath('.//img[@class="shizhan-course-img"]/@src').extract_first()
            coding_item['image_urls'] = ["{0}{1}".format(CodingSpider.https, coding_banner)]
            # 课程价格
            coding_item['price'] = response.xpath('.//div[@class="course-card-price"]/text()').extract_first()
            # 详情地址
            coding_detail = coding.xpath('.//a/@href').extract_first()
            coding_item['detail'] = parse.urljoin(url, coding_detail)
            # 课程id
            coding_id = re.split('/', coding_detail)[-1].replace('.html', '')
            coding_item['coding_id'] = int(coding_id)
            # 评价得分
            coding_item['overall_score'] = coding.xpath('.//span[@class="r"]/text()').extract_first().replace('评价：', '')
            # 教师昵称
            coding_item['teacher_nickname'] = response.xpath(
                './/div[@class="lecturer-info"]/span/text()').extract_first()
            # 教师头像
            avatar = response.xpath('.//img[@class="shizhan-course-img"]/@src').extract_first()
            coding_item['teacher_avatar'] = "{0}{1}".format(CodingSpider.https, avatar)

            self.log("Item: %s" % coding_item)
            # 爬取详情页
            yield Request(coding_item['detail'], callback=self.parse_detail, meta={'coding_item': coding_item})

    def parse_detail(self, response):
        """ Spider Coding detail page
        
        :param response: 
        :return: 
        """
        url = response.url
        self.log("Response url is %s" % url)

        coding_item = response.meta['coding_item']
        # 课程时长
        coding_item['duration'] = response.xpath(
            '//div[@class="static-item static-time"]/span/strong/text()').extract_first()
        # 演示视频
        video = response.xpath('//div[@id="js-video-content"]/@data-vurl').extract_first()
        coding_item['video'] = parse.urljoin(CodingSpider.https, video)
        # 详情标题
        coding_item['small_title'] = response.xpath('//div[@class="title-box "]/h2/text()').extract_first()
        # 详情简介
        coding_item['detail_desc'] = response.xpath('//div[@class="info-desc"]/text()').extract_first()
        # 教师职位
        coding_item['teacher_job'] = response.xpath('//div[@class="teacher"]/p/text()').extract_first()
        # 适合人群(网页结构不规律，暂不处理)
        # coding_item['suit_crowd'] = response.xpath('//dl[@class="first"]/dd/text()').extract_first()
        # 技术要求(网页结构不规律，暂不处理)
        # coding_item['skill_require'] = response.xpath(
        #     '//div[@class="course-info-tip"]/dl[not(@class)]/dd/text()').extract_first()
        yield coding_item
