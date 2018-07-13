# -*- coding:utf-8 -*-
# url解析器
import urlparse
from bs4 import BeautifulSoup
import re


class htmlParser(object):
    def parse(self, page_url, html_content):
        if page_url is None or html_content is None:
            return
        soup = BeautifulSoup(html_content, 'html.parser', from_encoding='utf-8')
        new_urls = self.get_new_urls(page_url, soup)
        new_data = self.get_new_data(page_url, soup)
        return new_urls, new_data

    def get_new_urls(self, page_url, soup):
        new_urls = set()
        # 百度百科：a --> /item/ --> /item/*?
        # 搜狗百科：a --> /lemma/ --> /lemma/*?
        links = soup.find_all('a', href=re.compile(r'/item/*?'))
        for link in links:
            new_url = link['href']
            new_full_url = urlparse.urljoin(page_url, new_url)
            new_urls.add(new_full_url)
        return new_urls

    def get_new_data(self, page_url, soup):
        res_data = {}
        res_data['url'] = page_url

        # 百度百科：<dd class="lemmaWgt-lemmaTitle-title"><h1>...
        # 搜狗百科：<div class="lemma_name"><h1 id="title">...
        title_node = soup.find('dd', class_='lemmaWgt-lemmaTitle-title').find('h1')
        res_data['title'] = title_node.get_text()

        # 百度百科：<div class="lemma-summary" label-module="lemmaSummary">...
        # 搜狗百科：<div class="abstract">...
        summary_node = soup.find('div', class_='lemma-summary')
        res_data['summary'] = summary_node.get_text()
        return res_data
