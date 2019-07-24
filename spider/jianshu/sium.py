# -*- coding: utf-8 -*-
# @author : jared
# @date : 2019/7/5 23:23

import random
import time
from bs4 import BeautifulSoup

import pyperclip
import requests
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait

import jsloader

jianshu = "https://www.jianshu.com"
articles = set()


def load_articles():
    """ 获取所有文章 """

    if not articles:
        start_load = time.time()
        headers = {"user-agent": "Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36"}
        user_ids = ["000a530f461c", "68a80b0c87a5", "ef6f9c30080a", "b34dcc8c2394", "37ec6dd9fc1c",
                    "04f7029dba14", "32bbb0ecfcb9"]
        jianshu_u = "{}/u/".format(jianshu)
        for uid in user_ids:
            user = "{}{}".format(jianshu_u, uid)
            html = requests.get(user, headers=headers).text
            bs = BeautifulSoup(html, 'html.parser')
            info = bs.find("div", class_="info")
            p_list = info.find_all("p")
            article_num = int(p_list[2].text)

            count = 0
            while count < article_num:
                for page in range(1, 100):
                    html = requests.get("{}?order_by=shared_at&page={}".format(user, page), headers=headers).text
                    bs = BeautifulSoup(html, 'html.parser')
                    titles = bs.find_all('a', class_="title")
                    for article_title in titles:
                        article_url = article_title.get("href")
                        if article_url:
                            count += 1
                            articles.add(article_url)
                    if count >= article_num:
                        break

        print("共发布了{}篇".format(len(articles)))
        print("获取用时{}秒".format(int(time.time() - start_load)))
    return articles


def sleep(min_seconds=3, max_seconds=10):
    """ 随机休眠 """

    time.sleep(random.randint(min_seconds, max_seconds))


data = jsloader.load_account("dbdata")
for account in data:
    username, password, role, post_num, like = account.username, account.password, \
                                               account.role, account.post_num, account.like
    post_num = int(post_num)
    if post_num <= 0 and like != "T":
        continue
    start = time.time()
    options = Options()
    # if role != "6":
    #     options.add_argument('--headless')
    #     options.add_argument('log-level=3')
    #     options.add_argument('--no-sandbox')
    #     options.add_argument('--disable-gpu')
    #     options.add_argument('window-size=1366x728')
    #     options.add_argument('--disable-dev-shm-usage')
    #     options.add_argument('blink-settings=imagesEnabled=false')
    driver = webdriver.Chrome(chrome_options=options)
    wait = WebDriverWait(driver, 30)
    short_wait = WebDriverWait(driver, 10)
    long_wait = WebDriverWait(driver, 60)
    max_long_wait = WebDriverWait(driver, 100)

    driver.get("{}/sign_in".format(jianshu))
    driver.maximize_window()

    try:
        # 登录
        if role != "6":
            ele = wait.until(EC.element_to_be_clickable((By.XPATH, '/html/body/div[1]/div[2]/div/div/ul/li[4]')))
            ele.click()
            ele = wait.until(EC.element_to_be_clickable((By.CLASS_NAME, 'douban')))
            ele.click()

            sleep(3, 5)
            driver.close()
            window_handles = driver.window_handles
            driver.switch_to.window(window_handles[-1])

            username_ele = wait.until(EC.element_to_be_clickable((By.ID, 'inp-alias')))
            password_ele = wait.until(EC.element_to_be_clickable((By.ID, 'inp-pwd')))
            login_ele = wait.until(
                EC.element_to_be_clickable((By.XPATH, '/html/body/div/div[2]/form[2]/div[4]/input[1]')))
        else:
            username_ele = wait.until(EC.element_to_be_clickable((By.ID, 'session_email_or_mobile_number')))
            password_ele = wait.until(EC.element_to_be_clickable((By.ID, 'session_password')))
            login_ele = wait.until(EC.element_to_be_clickable((By.ID, 'sign-in-form-submit-btn')))

        username_ele.send_keys(username)
        password_ele.send_keys(password)
        login_ele.click()
    except:
        print("{} : 登录失败".format(role))
    else:
        try:
            # 通过该元素判断是否正常登录
            menu_ele = wait.until(EC.element_to_be_clickable((By.ID, 'menu')))
        except:
            print("{} ：{} 登录失败".format(role, driver.title))
        else:
            print("\nNumber{}.".format(role))
            print("Number{}.登录用时{}秒".format(role, int(time.time() - start)))

            """ 写文 """
            if post_num > 0:
                start = time.time()
                article_data = jsloader.load_article(role)
                driver.get("{}/writer#/".format(jianshu))
                sleep()
                for title, content in article_data.items():
                    ele = wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, "i[class='fa fa-plus-circle']")))
                    ele.click()
                    sleep(2, 3)

                    ele = wait.until(EC.presence_of_element_located((By.CLASS_NAME, "_24i7u")))
                    ele.clear()
                    ele.send_keys(title)
                    sleep(2, 3)

                    pyperclip.copy(content)
                    ele = wait.until(EC.presence_of_element_located((By.ID, "arthur-editor")))
                    ele.clear()
                    ele.send_keys(Keys.CONTROL, 'v')
                    sleep(2, 3)
                print("Number{}.写文用时{}秒".format(role, int(time.time() - start)))

            """ 喜欢 """
            if like == "T":
                load_articles()
                start = time.time()
                for article in articles:
                    url = "{}{}".format(jianshu, article)
                    driver.get(url)
                    beautiful_soup = BeautifulSoup(driver.page_source, 'html.parser')
                    like_element = beautiful_soup.find("div", class_="btn like-group active")
                    if not like_element:
                        print("{}".format(url))
                print("Number{}.喜欢用时{}秒".format(role, int(time.time() - start)))
    finally:
        driver.close()
        driver.quit()
