import csv
import json

import requests
from bs4 import BeautifulSoup


class Spider(object):

    def __init__(self) -> None:
        self.list_data = []
        self.list_repeat = []

    def spider(self, page):
        # Python: c101280100-p100109 Java: c101280100-p100101
        url = 'https://www.zhipin.com/c101280100-p100101/?page=' + page + '&ka=page-' + page
        headers = {
            'cookie': 'lastCity=101280100; JSESSIONID=""; __c=1532674186; __g=-; __l=l=%2Fwww.zhipin.com%2F&r=; Hm_lvt_194df3105ad7148dcf2b98a91b5e727a=1531725463,1532505461,1532674186; toUrl=https%3A%2F%2Fwww.zhipin.com%2Fc101280100-p100101%2Fpage%3D10; Hm_lpvt_194df3105ad7148dcf2b98a91b5e727a=1532674604; __a=72893011.1528771525.1532505461.1532674186.53.9.33.45',
            'user-agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36',
        }
        resp = requests.get(url, headers=headers)
        bs = BeautifulSoup(resp.text, 'html.parser')
        info_primary = bs.find_all(class_='info-primary')
        for info in info_primary:
            href = info.h3.a['href']
            url = 'https://www.zhipin.com' + href
            if href not in self.list_repeat:
                self.list_repeat.append(href)
                resp = requests.get(url, headers=headers)
                bs = BeautifulSoup(resp.text, 'html.parser')
                info_company = bs.find(class_='info-company')
                company_name = info_company.a['title']
                address = bs.find(class_='location-address').text
                location = ''.join(address.split())
                print(location)
                lng_lat = self.transfer(location)
                dict_data = {'企业名称': company_name, '工作地址': location, '招聘主页': url, '经纬度': lng_lat}
                self.list_data.append(dict_data)

    @staticmethod
    def transfer(addr):
        url = 'http://api.map.baidu.com/geocoder/v2/?address=' + addr + '&output=json&ak=TCLfUCrFQDLWQrzz3NKYBwb8ZY57tgAt'
        resp = requests.get(url)
        resp_json = json.loads(resp.text)
        status = resp_json['status']
        if status == 0:
            result = resp_json['result']
            location = result['location']
            # 经度
            lng = location['lng']
            # 纬度
            lat = location['lat']
            return str(lng) + ',' + str(lat)
        return '0,0'

    def save_csv(self):
        with open('boss_java_gz.csv', 'w', newline='', encoding='utf-8-sig') as f:
            headers = ['企业名称', '工作地址', '招聘主页', '经纬度']
            # 标头
            writer = csv.DictWriter(f, headers)
            writer.writeheader()
            # 写入
            writer.writerows(self.list_data)


if __name__ == '__main__':
    s = Spider()
    for n in range(1, 11):
        s.spider(str(n))
    s.save_csv()
