# -*- coding:utf-8 -*-
# 京东图书小爬虫
import re
import urlparse
import urllib2
import datetime
from random import random

import MySQLdb
from bs4 import BeautifulSoup

conn = MySQLdb.connect(host='xxx', port=3306, user='root', passwd='xxx',
                       db='xxx', charset='utf8')
cursor = conn.cursor()
for i in range(1, 286):
    # 排行榜
    # 小说文学：0-0-0.html?category=20002-0-0-0-10001-[1-5]
    # 励志与成功:0-0-0.html?category=3267-0-0-0-10001-[1-5]
    # 人文社科:0-0-0.html?category=20004-0-0-0-10001-[1-5]
    # 计算机与互联网：0-0-0.html?category=3287-0-0-0-10001-[1-5]
    # 杂志期刊：0-0-0.html?category=4758-0-0-0-10001-[1-5]
    # 科技：0-0-0.html?category=20007-0-0-0-10001-[1-5]
    # 传记：0-0-0.html?category=3261-0-0-0-10001-[1-5]
    # root_url = urlparse.urljoin('http://book.jd.com/booktop/', '0-0-0.html?category=3261-0-0-0-10001-' + str(i))
    # 心灵鸡汤：https://list.jd.com/list.html?cat=1713,3267,3466&page=[1,286]&sort=sort_totalsales15_desc&trans=1&JL=4_2_0#J_main
    root_url = urlparse.urljoin('https://list.jd.com/', 'list.html?cat=1713,3267,3466&page=' + str(
        i) + '&sort=sort_totalsales15_desc&trans=1&JL=4_2_0#J_main')
    resp = urllib2.urlopen(root_url)

    # print resp.getcode()
    # print resp.read()

    html_content = resp.read()
    bs = BeautifulSoup(html_content, 'html.parser', from_encoding='utf-8')
    # <a class="p-name" href="//item.jd.com/11757204.html"...
    # links = bs.find_all('a', href=re.compile(r'//item.jd.com/') class_='p-name')
    # <a href="//item.jd.com/11757204.html"...
    links = bs.find_all('a', href=re.compile(r'//item.jd.com/'))
    links_set = set()
    count = 0
    for link in links:
        link_href = link['href']
        link_url = urlparse.urljoin('http://', link_href)
        links_set.add(link_url)
    for set_url in links_set:
        resp2 = urllib2.urlopen(set_url)
        html_content2 = resp2.read()
        bs2 = BeautifulSoup(html_content2, 'html.parser', from_encoding='utf-8')

        img = bs2.find('img', height='350')
        # title
        title = img['alt']

        p_author = bs2.find('div', class_='p-author')
        # author
        author = p_author.get_text().strip().replace(' ', '')

        # url
        url = img['src']

        # post_time
        post_time = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')

        reviews = bs2.find('div', class_='book-detail-content')
        # review
        if hasattr(reviews, 'get_text'):
            review = reviews.get_text().strip().replace(' ', '').replace('\n', '')
            if len(review) > 100:
                try:
                    sql = "insert tb_read(rid,title,author,url,review,aid,post_time)" \
                          "values(default,%s,%s,%s,%s,%s,%s)"
                    aid = 1 if random() >= 0.5 else 2
                    cursor.execute(sql, (title[0:15], author[0:30], url, review[0:1500], aid, post_time))
                    count += 1
                    print sql, count, len(review)
                    conn.commit()
                except Exception as e:
                    print 'error : ', e
                    conn.rollback()
cursor.close()
conn.close()
