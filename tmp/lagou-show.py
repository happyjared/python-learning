import csv
import time
import uuid
import json
import requests
from utils import uniid
from bs4 import BeautifulSoup


class Spider(object):
    def __init__(self) -> None:
        self.list_data = []
        self.list_repeat = []

    def spider(self, page):
        url = 'https://www.lagou.com/jobs/positionAjax.json'
        #  'district': '黄埔区',
        querystring = {'px': 'default', 'city': '广州', 'needAddtionalResult': 'false'}
        # payload = 'first=false&pn=' + str(page) + '&kd=Java'
        payload = {'first': 'false', 'pn': page, 'kd': 'Python'}
        headers = {'cookie': 'JSESSIONID=' + uniid.get_uuid4() + ';user_trace_token=' + uniid.get_uuid4()
                             + '; LGUID=' + uniid.get_uuid4() + '; index_location_city=%E6%88%90%E9%83%BD;SEARCH_ID='
                             + uniid.get_uuid4() + ';_gid=GA1.2.717841549.1514043316; _ga=GA1.2.952298646.1514043316; LGSID='
                             + uniid.get_uuid4() + ';LGRID=' + uniid.get_uuid4() + ';',
                   'accept-encoding': 'gzip, deflate, br',
                   'user-agent': 'Chrome/55.0.2883.87',
                   'referer': 'https://www.lagou.com/jobs/list_*',
                   'connection': 'keep-alive',
                   }

        response = requests.post(url, data=payload, headers=headers, params=querystring)
        resp_json = json.loads(response.text)
        content = resp_json['content']
        position_result = content['positionResult']
        result = position_result['result']
        for r in result:
            position_id = r['positionId']
            if position_id not in self.list_repeat:
                self.list_repeat.append(position_id)
                url = 'https://www.lagou.com/jobs/' + str(position_id) + '.html'
                resp = requests.get(url, headers=headers)
                bs = BeautifulSoup(resp.text, 'html.parser')
                work_address = bs.find(class_='work_addr')
                try:
                    work_address_text = work_address.text
                except AttributeError:
                    print('---------------AttributeError ', url)
                else:
                    address = work_address_text.replace('-', '').replace('查看地图', '')
                    location = ''.join(address.split())
                    lng_lat = self.transfer(location)
                    company = bs.find(class_='b2')
                    company_name = ''
                    try:
                        company_name = company['alt']
                    except TypeError:
                        print('---------------TypeError ', url)
                    finally:
                        dict_data = {'企业名称': company_name, '工作地址': location, '招聘主页': url, '经纬度': lng_lat}
                        print(dict_data)
                        self.list_data.append(dict_data)

    @staticmethod
    def transfer(address):
        url = 'http://api.map.baidu.com/geocoder/v2/?address=' + address + '&output=json&ak=TCLfUCrFQDLWQrzz3NKYBwb8ZY57tgAt'
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
        with open('lagou_python_gz.csv', 'w', newline='', encoding='utf-8-sig') as f:
            headers = ['企业名称', '工作地址', '招聘主页', '经纬度']
            # 标头
            writer = csv.DictWriter(f, headers)
            writer.writeheader()
            # 写入
            writer.writerows(self.list_data)


if __name__ == '__main__':
    s = Spider()
    for n in range(1, 31):
        s.spider(n)
        # time.sleep(5)
    s.save_csv()
