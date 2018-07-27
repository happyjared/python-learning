import time
import requests
import authorize
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.common.exceptions import *
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.wait import WebDriverWait


# 券妈妈
class QMM(object):

    def __init__(self):
        self.list_repeat = []
        self.list_detail = []

    '''
        爬取券妈妈的京豆汇总页及详情页获得具体的京东京豆领取页地址
    '''

    def spider(self):
        # 京豆汇总页
        url = 'http://www.quanmama.com/zhidemai/2354631.html'
        resp = requests.get(url)
        bs = BeautifulSoup(resp.text, 'html.parser')
        t_body = bs.tbody
        for link in t_body.find_all('a'):
            detail = link.get('href')
            resp = requests.get(detail)
            bs = BeautifulSoup(resp.text, 'html.parser')
            t_body_list = bs.find_all('tbody')
            for t_body in t_body_list:
                for a in t_body.find_all('a'):
                    detail = a.get('href')
                    self.list_detail.append(detail)
        print('一共抓取了 %d 个领取页面' % (len(self.list_detail)))
        self.list_detail.sort()
        self.receive()

    '''
        登录并领取详情页的店铺京豆
    '''

    def receive(self, timeout=5):
        # option = webdriver.ChromeOptions()
        # 静默模式
        # option.add_argument('headless')
        driver = webdriver.Chrome()
        jd_login = 'https://passport.jd.com/new/login.aspx'
        driver.get(jd_login)

        # 窗口最大化
        driver.maximize_window()

        # QQ授权登录
        driver.find_element_by_xpath('//*[@id="kbCoagent"]/ul/li[1]/a').click()
        authorize.qq(driver, timeout)

        time.sleep(timeout)

        for detail in self.list_detail:
            print('start spider ', detail, end='')
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
                # 取消关注
                unsubscribe_btn = WebDriverWait(driver, timeout).until(
                    lambda d: d.find_element_by_css_selector("[class='d-header-icon e-attention']"))
                unsubscribe_btn.click()
            except TimeoutException:
                print(' 领取失败, TimeoutException ')
            else:
                print(' 领取成功 ')


if __name__ == '__main__':
    qmm = QMM()
    qmm.spider()
