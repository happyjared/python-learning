# -*- coding: utf-8 -*-
import sys
import json
import scrapy
from utils import mytime
from scrapy import Request
from bs4 import BeautifulSoup
from zealer.service import app, sql
from scrapy.loader import ItemLoader
from scrapy.loader.processors import TakeFirst
from zealer.items import MediaItem, CommentItem


class TechSpider(scrapy.Spider):
    name = 'tech'
    allowed_domains = ['zealer.com']

    # start_urls = ['https://zealer.com/']

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.postgres = app.postgres()
        self.series_list = self.postgres.fetch_all(sql.get_series())
        self.post_stop = {}  # 用于判断评论抓取终止
        self.series_stop = {}  # 用于判断Media抓取终止
        self.max_page = sys.maxsize
        self.post = 'http://www.zealer.com/post/{}'
        self.sift = 'http://www.zealer.com/x/sift?cid={}&page={}&order=created_at'
        self.comment = 'http://www.zealer.com/Post/comment?id={}&page={}'

    def start_requests(self):
        for series in self.series_list:
            series_id, cp = series[0], series[1]
            for page in range(1, self.max_page):
                if self.series_stop.get(series_id):
                    self.logger.warning('Stop Media: {}'.format(series_id))
                    break
                else:
                    sift = self.sift.format(cp, page)
                    yield Request(sift, callback=self.parse, meta={'series_id': series_id})

    def parse(self, response):

        data = json.loads(response.body_as_unicode())
        status, messages = data.get('status'), data.get('message')
        self.logger.info('Media URL: {} , status: {} , messages: {}'.format(response.url, status, len(messages)))

        series_id = response.meta['series_id']
        if messages:
            # 解析数据
            for message in messages:
                item = ItemLoader(item=MediaItem())
                item.default_output_processor = TakeFirst()
                post_id = message.get('id')
                item.add_value('postId', int(post_id))
                item.add_value('seriesId', series_id)
                item.add_value('title', message.get('title'))
                item.add_value('coverPicture', message.get('cover'))
                comment_total = int(message.get('comment_total'))
                item.add_value('commentNum', comment_total)
                item.add_value('liveTime', message.get('live_time'))
                detail_url = self.post.format(post_id)
                item.add_value('detailUrl', detail_url)

                if comment_total:
                    """抓取评论数据"""
                    for page in range(1, self.max_page):
                        if self.series_stop.get(post_id):
                            self.logger.warning('Stop Comment: {}'.format(post_id))
                            break
                        else:
                            yield Request(self.comment.format(post_id, page),
                                          callback=self.parse_comment, meta={'post_id': post_id})

                yield Request(detail_url, callback=self.parse_detail, meta={'item': item})
        else:
            # 终止条件
            self.logger.warning('Judge Stop Media: {}'.format(series_id))
            self.series_stop[series_id] = True

    @staticmethod
    def parse_detail(response):
        """解析获取详情页的数据"""

        item = response.meta['item']
        desc = response.xpath('//p[@class="des_content"]/text()').extract_first()
        item.add_value('desc', desc)
        tag_list = response.xpath('//div[@class="right_tag"]/a/text()').extract()
        item.add_value('label', '; '.join(map(str.strip, tag_list)))
        media_info = response.xpath('//script[@type="text/javascript"]/text()[contains(.,"option")]').extract_first()
        media_info = media_info.split('=')[1].split(';')[0].replace(' ', '')
        item.add_value('mediaInfo', media_info)

        yield item.load_item()

    def parse_comment(self, response):
        """解析获取评论数据"""
        data = json.loads(response.body_as_unicode())

        status, count = data.get('status'), int(data.get('count'))
        self.logger.info('Comment URL: {} , status: {} , count: {}'.format(response.url, status, count))

        post_id = response.meta['post_id']
        if count:
            content = data.get('content')
            bs = BeautifulSoup(content, 'html.parser')
            comment_list = bs.find_all('li')
            for comment in comment_list:
                item = CommentItem()
                item['postId'] = post_id
                item['userId'] = comment.find('div', class_='list_card')['card']
                item['username'] = comment.find('span', class_='mb_name').text
                item['avatar'] = comment.find('img')['src']
                item['content'] = comment.find('p').text
                comment_time = comment.find('span', class_='commentTime').text.strip()
                item['commentTime'] = self.handleCommentTime(comment_time)

                yield item
        else:
            # 终止条件
            self.logger.warning('Judge Stop Comment: {}'.format(post_id))
            self.post_stop[post_id] = True

    @staticmethod
    def handleCommentTime(comment_time):
        """处理日期问题"""

        if comment_time.find('年') == -1:
            comment_time = '{}年{}'.format(mytime.now_year(), comment_time)

        return mytime.str_to_date_with_format(comment_time, '%Y年%m月%d日 %H:%M')
