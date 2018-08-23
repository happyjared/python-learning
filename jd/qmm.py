import time
from urllib.parse import parse_qs

import requests
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.common.exceptions import *
from selenium.webdriver.support.wait import WebDriverWait

from utils import auth


class QMM(object):
    """借助券妈妈平台简单褥京东京豆羊毛"""

    def __init__(self, sleep_time=3):
        self.shop_list = []
        self.timeout = sleep_time

    def start(self):
        """ 抓取指定京豆汇总页 -> 抓取汇总详情页(获得店铺京豆领取地址)"""

        url = 'http://www.quanmama.com/zhidemai/2459063.html'  # 京豆汇总页
        resp = requests.get(url)
        bs = BeautifulSoup(resp.text, 'html.parser')
        detail_body = bs.tbody
        for link in detail_body.find_all('a'):
            text = link.text
            url_detail = link.get('href')
            if '8月22' not in text:
                continue

            resp = requests.get(url_detail)  # 汇总详情页
            bs = BeautifulSoup(resp.text, 'html.parser')
            for detail_body in bs.find_all('tbody'):
                for shop_url in detail_body.find_all('a'):
                    url_detail = self.parse_url(shop_url.get('href'))
                    if url_detail not in self.shop_list:
                        self.shop_list.append(url_detail)  # 简单去重

        print('共抓取了 %d 个待领取京豆店铺页面' % len(self.shop_list))
        self.wool()

    @staticmethod
    def parse_url(detail):
        """提取URL中的url参数"""

        shop_url = parse_qs(detail).get('url')
        return shop_url.pop() if shop_url else detail

    def wool(self):
        """ 登录京东，领取店铺京豆"""

        # 登陆京东

        # 无浏览器模式
        # option = webdriver.ChromeOptions()
        # option.add_argument('headless')

        driver = webdriver.Chrome()
        jd_login = 'https://passport.jd.com/new/login.aspx'
        driver.get(jd_login)

        driver.maximize_window()  # 窗口最大化

        driver.find_element_by_xpath('//*[@id="kbCoagent"]/ul/li[1]/a').click()  # QQ授权登录
        auth.qq(driver, self.timeout)
        time.sleep(self.timeout)

        for i, detail in enumerate(self.shop_list):
            print('%d.Start spider %s' % (i + 1, detail), end='')
            driver.get(detail)
            try:
                # 1.点击"领取"按钮
                gift_btn = WebDriverWait(driver, self.timeout).until(
                    lambda d: d.find_element_by_css_selector("[class='J_drawGift d-btn']"))
            except TimeoutException:
                print(' 领取失败, TimeoutException ')
            else:
                gift_btn.click()
                try:
                    wool_num = WebDriverWait(driver, self.timeout).until(
                        lambda d: d.find_element_by_class_name('d-num'))
                    print(' 领取成功, 京豆数 %s ' % str(wool_num.text))
                    # 2.点击"关闭"按钮
                    close_btn = WebDriverWait(driver, self.timeout).until(
                        lambda d: d.find_element_by_css_selector("[class='J_giftclose d-btn']"))
                    close_btn.click()
                    time.sleep(30)
                    # 3.取消关注店铺
                    subscribe_btn = WebDriverWait(driver, self.timeout).until(
                        lambda d: d.find_element_by_css_selector('span.d-header-icon.e-attention.current'))
                    subscribe_btn.click()
                except:
                    print(' 领取成功')
                    pass

    def signIn(self, driver):
        """京东金融签到领钢镚"""

        # 进入京东金融
        driver.find_element_by_xpath('//*[@id="navitems-group3"]/li[2]/a').click()
        driver.close()
        # 切换到最新打开的窗口
        window_handles = driver.window_handles
        driver.switch_to.window(window_handles[-1])
        # 点击签到
        sign_btn = WebDriverWait(driver, self.timeout).until(
            lambda d: d.find_element_by_xpath('//*[@id="primeWrap"]/div[1]/div[3]/div[1]/a'))
        sign_btn.click()


if __name__ == '__main__':
    qmm = QMM()
    qmm.start()
