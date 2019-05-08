import random
import sys
import time

import requests
from datetime import datetime
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.wait import WebDriverWait

argv = sys.argv
argv_length = len(argv)


def sleep(min_seconds=3, max_seconds=10):
    """随机休眠"""
    time.sleep(random.randint(min_seconds, max_seconds))


# 无头模式
options = Options()
options.add_argument('--headless')
options.add_argument('log-level=3')
options.add_argument('--no-sandbox')
options.add_argument('--disable-gpu')
options.add_argument('window-size=1366x728')
options.add_argument('--disable-dev-shm-usage')
driver = webdriver.Chrome(chrome_options=options)

username = argv[1] if argv_length > 1 else input("请输入登录账号\n")
password = argv[2] if argv_length > 2 else input("请输入登录密码\n")
role = int(argv[3]) if argv_length > 3 else input("请输入Role\n")

# 登录简书
jianshu = "https://www.jianshu.com"
driver.get("{}/sign_in".format(jianshu))
driver.maximize_window()

if role == 0:
    # QQ登录
    driver.find_element_by_id("qq").click()
    sleep()
    # 切换到最新打开的窗口
    driver.close()
    window_handles = driver.window_handles
    driver.switch_to.window(window_handles[-1])
    # 切换iframe
    i_frame = WebDriverWait(driver, 3).until(lambda d: d.find_element_by_id('ptlogin_iframe'))
    driver.switch_to.frame(i_frame)
    driver.find_element_by_id("switcher_plogin").click(), sleep()
    driver.find_element_by_id("u").send_keys(username)
    driver.find_element_by_id("p").send_keys(password)
    driver.find_element_by_id("login_button").click()
else:
    # 豆瓣登录
    driver.find_element_by_xpath("/html/body/div[1]/div[2]/div/div/ul/li[4]").click()
    driver.find_element_by_class_name("douban").click()
    sleep()
    # 切换到最新打开的窗口
    driver.close()
    window_handles = driver.window_handles
    driver.switch_to.window(window_handles[-1])
    driver.find_element_by_id("inp-alias").send_keys(username)
    driver.find_element_by_id("inp-pwd").send_keys(password)
    driver.find_element_by_xpath("/html/body/div/div[2]/form[2]/div[4]/input[1]").click()
sleep()

page_title = driver.title
print("当前：{}".format(page_title))

# 1.写文(一言Hitokoto)
driver.get("{}/writer#/".format(jianshu)), sleep()
driver.find_element_by_css_selector("i[class='fa fa-plus-circle']").click(), sleep()

driver.find_element_by_class_name("_24i7u").send_keys(Keys.HOME)
title_prefix = "一言美句：" if role == 1 else "每日一言："
now_hour = datetime.now().hour
title_prefix = "早晨！" if now_hour < 18 else "晚安！" + title_prefix
driver.find_element_by_class_name("_24i7u").send_keys(title_prefix)

i = 0
content = ""
while len(content) < 1000:
    resp = requests.get("https://v1.hitokoto.cn/").json()
    hitokoto = resp.get("hitokoto")
    if hitokoto:
        i += 1
        content += hitokoto
        driver.find_element_by_id("arthur-editor").send_keys(str(i) + ". " + hitokoto)
        if len(content) < 1000:
            driver.find_element_by_id("arthur-editor").send_keys(Keys.ENTER)
            driver.find_element_by_id("arthur-editor").send_keys(Keys.ENTER)

# 发布文章
driver.find_element_by_css_selector("i[class='fa fa-mail-forward']").click()
sleep()

# 2.阅读(PC无效)
# driver.get(jianshu)
# sleep()
# content_elements = driver.find_elements_by_class_name("content")
# for content_element in content_elements:
#     article_element = content_element.find_element_by_class_name("title")
#     article_element.click(), sleep(3, 5)
#     window_handles = driver.window_handles
#     driver.switch_to.window(window_handles[-1])
#     driver.execute_script("window.scrollTo(0,document.body.scrollHeight)"), sleep(1, 3)
#     driver.execute_script("window.scrollTo(document.body.scrollHeight,0)"), sleep(1, 3)
#     driver.close()
#     window_handles = driver.window_handles
#     driver.switch_to.window(window_handles[0])
# sleep()

# 3.点赞(手动操作)
# if role == 0:
#     jianshu_u = "{}/u/".format(jianshu)
#     role_0 = []
# elif role == 1:
#     driver.get("{}/users/68a80b0c87a5/following".format(jianshu))
#     user_list_element = driver.find_element_by_class_name("user-list")
#     user_elements = user_list_element.find_elements_by_class_name("avatar")
#     for user_element in user_elements:
#         user_element.click(), sleep()
#         article_list_element = driver.find_element_by_class_name("note-list")
#         top_article_time_element = article_list_element.find_element_by_class_name("time")
#         if True:
#             article_list_element.find_element_by_class_name("wrap-img").click(), sleep()
#             window_handles = driver.window_handles
#             driver.switch_to.window(window_handles[-1])
#             driver.find_element_by_css_selector("class='iconfont ic-like'").click()
#             driver.close()
# sleep()

# 4.评论
jianshu_p = "{}/p/".format(jianshu)
if role == 1:
    role_1 = "be27870bdba9"
    driver.get("{}{}".format(jianshu_p, role_1)), sleep()
    driver.execute_script("window.scrollTo(0,1400)"), sleep(1, 2)
    driver.find_element_by_id('like-button-38969657').click(), sleep(1, 2)
    driver.find_element_by_id('like-button-38969657').click()
else:
    role_0 = "ac02c56c0865"
    driver.get("{}{}".format(jianshu_p, role_0)), sleep()
    driver.execute_script("window.scrollTo(0,3200)"), sleep(1, 2)
    driver.find_element_by_id('like-button-38968576').click(), sleep(1, 2)
    driver.find_element_by_id('like-button-38968576').click()
sleep()
