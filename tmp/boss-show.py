import csv
import json

import requests
from bs4 import BeautifulSoup
from selenium import webdriver


class Spider(object):

    def __init__(self) -> None:
        self.list_data = []
        self.list_repeat = []

    def spider(self, text, d):
        bs = BeautifulSoup(text, 'html.parser')
        info_primary = bs.find_all(class_='info-primary')
        for info in info_primary:
            href = info.h3.a['href']
            detail = 'https://www.zhipin.com' + href
            if href not in self.list_repeat:
                self.list_repeat.append(href)
                d.get(detail)
                bs = BeautifulSoup(d.page_source, 'html.parser')
                info_company = bs.find(class_='info-company')
                company_name = info_company.a['title']
                address = bs.find(class_='location-address').text
                location = ''.join(address.split())
                lng_lat = self.transfer(location)
                dict_data = {'企业名称': company_name, '工作地址': location, '招聘主页': url, '经纬度': lng_lat}
                print(dict_data)
                self.list_data.append(dict_data)

    @staticmethod
    def transfer(address):
        resp = requests.get(
            'http://api.map.baidu.com/geocoder/v2/?address=' + address + '&output=json&ak=TCLfUCrFQDLWQrzz3NKYBwb8ZY57tgAt')
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
    # Python: c101280100-p100109 Java: c101280100-p100101
    # 静默模式
    option = webdriver.ChromeOptions()
    option.add_argument('headless')
    driver = webdriver.Chrome(chrome_options=option)
    for page in range(1, 11):
        url = 'https://www.zhipin.com/c101280100-p100101/?page=' + str(page)
        driver.get(url)
        s.spider(driver.page_source, driver)
    s.save_csv()
