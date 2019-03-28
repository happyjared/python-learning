import os
import sys
import time
import random
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.chrome.options import Options

argv = sys.argv
argv_length = len(argv)


def sleep():
    """随机休眠"""
    time.sleep(random.randint(3, 10))


# 无头模式
options = Options()
options.add_argument('window-size=1366x728')
options.add_argument('--disable-gpu')
options.add_argument('--no-sandbox')
options.add_argument('--disable-dev-shm-usage')
options.add_argument('--headless')
driver = webdriver.Chrome(chrome_options=options)

# 登录币乎
bihu = "https://bihu.com"
bihu_login = "{}/login".format(bihu)
driver.get(bihu_login)

driver.maximize_window()

username = argv[1] if argv_length > 1 else input("请输入用户名\n")
driver.find_element_by_xpath('//*[@id="root"]/div/div/div/div[1]/div[3]/div/div[1]/form/div[1]/input').send_keys(
    username)
password = argv[2] if argv_length > 2 else input("请输入登录密码\n")
driver.find_element_by_xpath('//*[@id="root"]/div/div/div/div[1]/div[3]/div/div[1]/form/div[2]/input').send_keys(
    password)

driver.find_element_by_class_name("LoaderButton").click()
sleep()

print(driver.current_url)
# 登录成功
if driver.current_url == bihu + "/":

    bs = BeautifulSoup(driver.page_source, 'html.parser')
    item_list = bs.find_all("li", class_="ArticleItem")
    articles = {}
    for article_item in item_list:
        # 解析ArticleItem
        user_info = article_item.find("div", class_="user-info")
        p_list = user_info.find_all("p")
        publish_time = p_list[-1].text

        bottom = article_item.find("div", class_="item-bottom")
        bottom_list = bottom.find_all("span")
        # Key数 && 点赞数 && 评论数
        key, like, comment = bottom_list
        key_num, like_num, comment_num = key.text.strip(), like.text.strip(), comment.text.strip()

        content_info = article_item.find("div", class_="content-info")
        info = content_info.find("a")
        articles[info["href"]] = int(like_num)

    num = 0
    # 点赞操作
    for key, value in sorted(articles.items(), key=lambda item: item[1]):
        if num >= 6: break

        article = "{}{}".format(bihu, key)
        driver.get(article)
        sleep()
        target = driver.find_element_by_class_name("collect-div")
        driver.execute_script("arguments[0].scrollIntoView()", target)
        sleep()

        details = driver.find_element_by_class_name("article-details-center2")
        buttons = details.find_elements_by_tag_name("button")
        if len(buttons) == 3:
            num += 1
            buttons[1].click()
            sleep()
