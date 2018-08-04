import time
import random
import requests
from bs4 import BeautifulSoup
from selenium import webdriver
from common_util import authorize
from urllib.parse import parse_qs
from selenium.common.exceptions import *
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.wait import WebDriverWait


# 券妈妈
class QMM(object):
    def __init__(self):
        self.list_detail = []

    '''
        爬取券妈妈的京豆汇总页及详情页获得具体的京东京豆领取页地址
    '''

    def spider(self):
        # 京豆汇总页
        url = 'http://www.quanmama.com/zhidemai/2459063.html'
        resp = requests.get(url)
        bs = BeautifulSoup(resp.text, 'html.parser')
        t_body = bs.tbody
        for link in t_body.find_all('a'):
            detail = link.get('href')
            text = link.text
            if '8月' not in text:
                continue
            resp = requests.get(detail)
            bs = BeautifulSoup(resp.text, 'html.parser')
            t_body_list = bs.find_all('tbody')
            for t_body in t_body_list:
                for a in t_body.find_all('a'):
                    href = a.get('href')
                    detail = self.get_url(href)
                    # print(href, "  +++++   ", detail)
                    if detail not in self.list_detail:
                        self.list_detail.append(detail)
        print('一共抓取了 %d 个领取页面' % (len(self.list_detail)))
        # self.list_detail.sort(reverse=True)
        random.shuffle(self.list_detail)
        self.receive()

    '''
        登录并领取详情页的店铺京豆
    '''

    def receive(self, timeout=2):
        # 静默模式
        # option = webdriver.ChromeOptions()
        # option.add_argument('headless')

        # 登陆京东
        # driver = webdriver.Chrome(chrome_options=option)
        # driver = webdriver.PhantomJS()
        driver = webdriver.Chrome()
        jd_login = 'https://passport.jd.com/new/login.aspx'
        driver.get(jd_login)

        # 窗口最大化
        driver.maximize_window()

        # QQ授权登录
        driver.find_element_by_xpath('//*[@id="kbCoagent"]/ul/li[1]/a').click()
        authorize.qq(driver, timeout)

        time.sleep(timeout)

        self.financial(driver)

        num = 0
        for detail in self.list_detail:
            num += 1
            print('%d.Start spider %s' % (num, detail), end='')
            driver.get(detail)
            try:
                # 领取按钮
                gift_btn = WebDriverWait(driver, timeout).until(
                    lambda d: d.find_element_by_css_selector("[class='J_drawGift d-btn']"))
                gift_btn.click()
                # 关闭按钮
                close_btn = WebDriverWait(driver, timeout).until(
                    lambda d: d.find_element_by_css_selector("[class='J_giftclose d-btn']"))
                close_btn.click()
                time.sleep(timeout)
                # 取消关注
                subscribe_btn = WebDriverWait(driver, timeout).until(
                    lambda d: d.find_element_by_id('shop-attention'))
                subscribe_btn.click()
            except TimeoutException:
                print(' 领取失败, TimeoutException ')
            else:
                print(' 领取成功 ')

    '''
        处理url
    '''

    @staticmethod
    def get_url(detail):
        url = parse_qs(detail).get('url')
        return detail if url is None else url.pop()

    '''
        京东金融签到
    '''

    @staticmethod
    def financial(driver, timeout=3):
        # 进入京东金融
        driver.find_element_by_xpath('//*[@id="navitems-group3"]/li[2]/a').click()
        driver.close()
        # 切换到最新打开的窗口
        window_handles = driver.window_handles
        driver.switch_to.window(window_handles[-1])
        # 点击签到
        sign_btn = WebDriverWait(driver, timeout).until(
            lambda d: d.find_element_by_xpath('//*[@id="primeWrap"]/div[1]/div[3]/div[1]/a'))
        sign_btn.click()


if __name__ == '__main__':
    qmm = QMM()
    qmm.spider()
