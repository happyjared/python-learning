# -*- coding: utf-8 -*-

# Define here the models for your spider middleware
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/spider-middleware.html

import logging
import random
import requests
from utils import captcha
from scrapy import signals
from scrapy.downloadermiddlewares.useragent import UserAgentMiddleware
from scrapy.downloadermiddlewares.redirect import RedirectMiddleware
from scrapy.downloadermiddlewares.httpproxy import HttpProxyMiddleware


# from scrapys.nearjob import app
#
# redis = app.redis_ip()


# class CustomIpProxyMiddleware(HttpProxyMiddleware):
#     """设置随机IP"""
#
#     def process_request(self, request, spider):
#         proxy = redis.srandmember("http", 1)[0]
#         logging.warning('----->>>: Proxy: ' + proxy)
#         request.meta["proxy"] = proxy

class CustomRedirectMiddleware(RedirectMiddleware):

    def __init__(self, settings):
        super().__init__(settings)
        self.index = 'https://www.zhipin.com{}'

    def process_response(self, request, response, spider):
        captcha_src = response.xpath('//img[@class="code"]/@src').extract_first()
        random_key = response.xpath('//input[@name="randomKey"]/@value').extract_first()

        if captcha_src and random_key:
            logging.warning("--->>>: Captcha src is {0} and random key is {1}".format(captcha_src, random_key))

            post_url = response.url.replace('popUpCaptcha', 'verifyCaptcha')
            captcha_url = self.index.format(captcha_src)
            captcha_base64 = captcha.urlToBase64(captcha_url)
            logging.warning('--->>>: Post URL {} and captcha url {}'.format(post_url, captcha_url))

            code = captcha.getVerCode(captcha_base64)

            data = {'randomKey': random_key, 'captcha': code}
            resp = requests.post(post_url, data=data)
            logging.warning('Resp: ' + resp.text)

        return super().process_response(request, response, spider)


class CustomUserAgentMiddleware(UserAgentMiddleware):
    """设置随机User-Agent"""

    def __init__(self, user_agent):
        super().__init__(user_agent)
        self.user_agent = user_agent

    @classmethod
    def from_crawler(cls, crawler):
        return cls(user_agent=crawler.settings['USER_AGENT_LIST'])

    def process_request(self, request, spider):
        user_agent = random.choice(self.user_agent)
        logging.warning("--->>>: User agent is: " + user_agent)
        request.headers['User-Agent'] = user_agent


class BossSpiderMiddleware(object):
    # Not all methods need to be defined. If a method is not defined,
    # scrapy acts as if the spider middleware does not modify the
    # passed objects.

    @classmethod
    def from_crawler(cls, crawler):
        # This method is used by Scrapy to create your spiders.
        s = cls()
        crawler.signals.connect(s.spider_opened, signal=signals.spider_opened)
        return s

    def process_spider_input(self, response, spider):
        # Called for each response that goes through the spider
        # middleware and into the spider.

        # Should return None or raise an exception.
        return None

    def process_spider_output(self, response, result, spider):
        # Called with the results returned from the Spider, after
        # it has processed the response.

        # Must return an iterable of Request, dict or Item objects.
        for i in result:
            yield i

    def process_spider_exception(self, response, exception, spider):
        # Called when a spider or process_spider_input() method
        # (from other spider middleware) raises an exception.

        # Should return either None or an iterable of Response, dict
        # or Item objects.
        pass

    def process_start_requests(self, start_requests, spider):
        # Called with the start requests of the spider, and works
        # similarly to the process_spider_output() method, except
        # that it doesn’t have a response associated.

        # Must return only requests (not items).
        for r in start_requests:
            yield r

    def spider_opened(self, spider):
        spider.logger.info('Spider opened: %s' % spider.name)


class BossDownloaderMiddleware(object):
    # Not all methods need to be defined. If a method is not defined,
    # scrapy acts as if the downloader middleware does not modify the
    # passed objects.

    @classmethod
    def from_crawler(cls, crawler):
        # This method is used by Scrapy to create your spiders.
        s = cls()
        crawler.signals.connect(s.spider_opened, signal=signals.spider_opened)
        return s

    def process_request(self, request, spider):
        # Called for each request that goes through the downloader
        # middleware.

        # Must either:
        # - return None: continue processing this request
        # - or return a Response object
        # - or return a Request object
        # - or raise IgnoreRequest: process_exception() methods of
        #   installed downloader middleware will be called
        return None

    def process_response(self, request, response, spider):
        # Called with the response returned from the downloader.

        # Must either;
        # - return a Response object
        # - return a Request object
        # - or raise IgnoreRequest
        return response

    def process_exception(self, request, exception, spider):
        # Called when a download handler or a process_request()
        # (from other downloader middleware) raises an exception.

        # Must either:
        # - return None: continue processing this exception
        # - return a Response object: stops process_exception() chain
        # - return a Request object: stops process_exception() chain
        pass

    def spider_opened(self, spider):
        spider.logger.info('Spider opened: %s' % spider.name)
