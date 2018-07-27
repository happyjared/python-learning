import csv
import time
import uuid
import json
import requests
from bs4 import BeautifulSoup


class Spider(object):

    def __init__(self) -> None:
        self.list_data = []
        self.list_repeat = []

    @staticmethod
    def get_uuid():
        return str(uuid.uuid4())

    def spider(self, page):
        url = 'https://www.lagou.com/jobs/positionAjax.json'
        #  'district': '黄埔区',
        querystring = {'px': 'default', 'city': '广州', 'needAddtionalResult': 'false'}
        # payload = 'first=false&pn=' + str(page) + '&kd=Java'
        payload = {'first': 'false', 'pn': page, 'kd': 'Python'}
        cookie = 'JSESSIONID=' + self.get_uuid() + ';user_trace_token=' + self.get_uuid() + '; LGUID=' + self.get_uuid() + '; index_location_city=%E6%88%90%E9%83%BD;SEARCH_ID=' + self.get_uuid() + ';_gid=GA1.2.717841549.1514043316; _ga=GA1.2.952298646.1514043316; LGSID=' + self.get_uuid() + ';LGRID=' + self.get_uuid() + ';'
        headers = {'cookie': cookie, 'origin': 'https://www.lagou.com', 'x-anit-forge-code': '0',
                   'accept-encoding': 'gzip, deflate, br', 'accept-language': 'zh-CN,zh;q=0.8,en;q=0.6',
                   'user-agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36',
                   'content-type': 'application/x-www-form-urlencoded; charset=UTF-8',
                   'accept': 'application/json, text/javascript, */*; q=0.01',
                   'referer': 'https://www.lagou.com/jobs/list_Java?px=new&city=%E6%88%90%E9%83%BD',
                   'x-requested-with': 'XMLHttpRequest', 'connection': 'keep-alive', 'x-anit-forge-token': 'None',
                   'cache-control': 'no-cache', 'postman-token': '91beb456-8dd9-0390-a3a5-64ff3936fa63'}

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
                # print(url)
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
                    # print(location)
                    lng_lat = self.transfer(location)
                    print(lng_lat)
                    company = bs.find(class_='b2')
                    company_name = ''
                    try:
                        company_name = company['alt']
                    except TypeError:
                        print('---------------TypeError ', url)
                    finally:
                        print(company_name)
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
