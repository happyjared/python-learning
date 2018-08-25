import app
import requests
from bs4 import BeautifulSoup
from zealer.service import sql

# BeautifulSoup+Request获取所有系列

postgres = app.postgres()
index = 'http://www.zealer.com/list?platform={}'
platforms = ['media', 'x']  # 对应Zealer官方(MEDIA)和达人专区(X)
for platform in platforms:
    resp = requests.get(index.format(platform))
    bs = BeautifulSoup(resp.text, 'html.parser')
    nav_list = bs.find('p', class_='nav_inner')
    for nav in nav_list.find_all('a', class_=''):
        name, nav_url = nav.text, nav.get('href')
        cp = int(nav_url.split('cp=')[1])
        postgres.handler(sql.save_series(), (name, cp, platform, True))
