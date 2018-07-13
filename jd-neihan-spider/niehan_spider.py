# -*- coding:utf-8 -*-
# 内涵社区段子爬虫
import requests
import MySQLdb
import datetime
import random
from bs4 import BeautifulSoup

url1 = 'http://neihanshequ.com/'
resp = requests.get(url1)
html_content = resp.text

bs = BeautifulSoup(html_content, 'html.parser')
contents = bs.select('h1 > p')
conn = MySQLdb.connect(host='xxx', port=3306, user='root', passwd='xxx',
                       db='xxx', charset='utf8')
cursor = conn.cursor()
count = 0
for content in contents:
    try:
        sql = 'insert tb_message(mid,uid,content,post_time) values(default,%s,%s,%s)'
        post_time = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        count += 1
        print content, count
        cursor.execute(sql, (random.choice((40, 41, 42, 43)), content, post_time))
        conn.commit()
    except Exception as e:
        print 'failed : ', e
        conn.rollback()
cursor.close()
conn.close()
