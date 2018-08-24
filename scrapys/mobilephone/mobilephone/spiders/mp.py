# -*- coding: utf-8 -*-
import scrapy


class MpSpider(scrapy.Spider):
    name = 'mp'
    allowed_domains = ['18183.com', 'cnmo.com']
    # 排行榜 http://top.zol.com.cn/compositor/cell_phone.html
    # http://detail.zol.com.cn/cell_phone_index/subcate57_list_1.html
    start_urls = ['http://sj.18183.com/ku', 'http://product.cnmo.com/all/product.html']

    def parse(self, response):
        pass
