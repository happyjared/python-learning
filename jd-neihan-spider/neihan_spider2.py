# -*- coding:utf-8 -*-
# 内涵社区段子小爬虫升级版
import requests
import MySQLdb
import urlparse
import datetime
import random
import json

headers = {
    'Host': 'neihanshequ.com',
    'User-Agent': 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36',
    'Accept': 'application/json, text/javascript, */*; q=0.01',
    'Accept-Language': 'zh-CN,zh;q=0.8,zh-TW;q=0.6,en-US;q=0.4,en;q=0.2',
    'Accept-Encoding': 'gzip, deflate, sdch',
    'Referer': 'http://neihanshequ.com/',
    'Connection': 'keep-alive',
    'X - CSRFToken': '3107c321a390851087d7a02ff652ccc5',
    'X - Requested - With': 'XMLHttpRequest',
    'Cookie': 'uuid="w:0aebb6f1b984444ea2b6ab98e03deee8"; tt_webid=57169602476; csrftoken=3107c321a390851087d7a02ff652ccc5; Hm_lvt_773f1a5aa45c642cf87eef671e4d3f6a=1494036420,1495425146; Hm_lpvt_773f1a5aa45c642cf87eef671e4d3f6a=1495428164'
}
content_set = set()
count = 0
for n in range(20, 55):
    # 获得不重复内容集合
    for i in range(1000):
        number = random.randint(10000, 100000)
        count += 1
        print count
        url = urlparse.urljoin('http://neihanshequ.com/',
                               'joke/?is_json=1&app_name=neihanshequ_web&max_time=149' + str(n) + str(number))
        # print url
        try:
            resp = requests.get(url, headers=headers, timeout=5)
            json_content = json.loads(resp.text)
        except Exception as e:
            print 'error : ', e
        for contents in json_content['data']['data']:
            content = '<p>' + contents['group']['text'] + '</p>'
            content_set.add(content)

# 遍历，存入数据库
# 连接数据库
conn = MySQLdb.connect(host='xxx', port=3306, user='root', passwd='xxx',
                       db='xxx', charset='utf8')
cursor = conn.cursor()
count = 0
for content_ in content_set:
    try:
        sql = 'insert tb_message(mid,uid,content,post_time) values(default,%s,%s,%s)'
        post_time = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        count += 1
        print sql, count, content_
        cursor.execute(sql, (random.choice((40, 41, 42, 43)), content_, post_time))
        conn.commit()
    except Exception as e:
        print 'failed : ', e
        conn.rollback()
print len(content_set)
# 关闭连接
cursor.close()
conn.close()
