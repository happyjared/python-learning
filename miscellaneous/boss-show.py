import csv
import json
import time
import random
import requests
from bs4 import BeautifulSoup


class Spider(object):

    def __init__(self) -> None:
        self.list_data = []
        self.list_repeat = []
        self.user_agent_list = [
            "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/22.0.1207.1 Safari/537.1",
            "Mozilla/5.0 (X11; CrOS i686 2268.111.0) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.57 Safari/536.11",
            "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.6 (KHTML, like Gecko) Chrome/20.0.1092.0 Safari/536.6",
            "Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.6 (KHTML, like Gecko) Chrome/20.0.1090.0 Safari/536.6",
            "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/19.77.34.5 Safari/537.1",
            "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.9 Safari/536.5",
            "Mozilla/5.0 (Windows NT 6.0) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.36 Safari/536.5",
            "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3",
            "Mozilla/5.0 (Windows NT 5.1) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3",
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3",
            "Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1062.0 Safari/536.3",
            "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1062.0 Safari/536.3",
            "Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3",
            "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3",
            "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3",
            "Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.0 Safari/536.3",
            "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.24 (KHTML, like Gecko) Chrome/19.0.1055.1 Safari/535.24",
            "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/535.24 (KHTML, like Gecko) Chrome/19.0.1055.1 Safari/535.24",
            'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36',
        ]

    def spider(self, page):
        # Python: c101280100-p100109 Java: c101280100-p100101
        url = 'https://www.zhipin.com/c101280100-p100101/?page=' + page
        headers = {
            'user-agent': random.choice(self.user_agent_list)
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
        time.sleep(60)
    # s.save_csv()
