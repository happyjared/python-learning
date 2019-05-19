import random
import sys
import time
from datetime import datetime

import requests
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.keys import Keys

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
print("当前{} ：{}".format(role, page_title))

# 1.写文
driver.get("{}/writer#/".format(jianshu)), sleep()
driver.find_element_by_css_selector("i[class='fa fa-plus-circle']").click(), sleep()

is_day = datetime.now().hour < 18
if role == 0 or role == 1:
    title_prefix = "早晨" if is_day else "晚安"
    title_prefix2 = "每日一言" if role == 0 else "一言美句"
    driver.find_element_by_class_name("_24i7u").send_keys(Keys.HOME)
    driver.find_element_by_class_name("_24i7u").send_keys((title_prefix + "！" + title_prefix2 + "："))
else:
    resp = requests.get("https://v1.hitokoto.cn/").json()
    title = resp.get('hitokoto')
    driver.find_element_by_class_name("_24i7u").clear()
    driver.find_element_by_class_name("_24i7u").send_keys(title)

content, count, content_length = "", 0, random.randint(1000, 1500)
while len(content) < content_length:
    resp = requests.get("https://v1.hitokoto.cn/").json()
    hitokoto = resp.get("hitokoto")
    if hitokoto:
        count += 1
        content += hitokoto
        driver.find_element_by_id("arthur-editor").send_keys(str(count) + ". " + hitokoto)
        if len(content) < content_length:
            driver.find_element_by_id("arthur-editor").send_keys(Keys.ENTER)
            driver.find_element_by_id("arthur-editor").send_keys(Keys.ENTER)
# 发布文章
driver.find_element_by_css_selector("i[class='fa fa-mail-forward']").click()
sleep()

# 2.评论
if is_day:
    jianshu_p = "{}/p/".format(jianshu)
    if role == 0:
        p_suffix = "ac02c56c0865"
        driver.get("{}{}".format(jianshu_p, p_suffix)), sleep()
        driver.execute_script("window.scrollTo(0,3200)"), sleep(1, 2)
        driver.find_element_by_id('like-button-38968576').click(), sleep(1, 2)
        driver.find_element_by_id('like-button-38968576').click()
    elif role == 1:
        p_suffix = "be27870bdba9"
        driver.get("{}{}".format(jianshu_p, p_suffix)), sleep()
        driver.execute_script("window.scrollTo(0,1400)"), sleep(1, 2)
        driver.find_element_by_id('like-button-38969657').click(), sleep(1, 2)
        driver.find_element_by_id('like-button-38969657').click()
    elif role == 2:
        p_suffix = "277f1b0a140d"
        driver.get("{}{}".format(jianshu_p, p_suffix)), sleep()
        driver.execute_script("window.scrollTo(0,3200)"), sleep(1, 2)
        driver.find_element_by_id('like-button-40692862').click(), sleep(1, 2)
        driver.find_element_by_id('like-button-40692862').click()
    elif role == 3:
        p_suffix = "15eb212788fc"
        driver.get("{}{}".format(jianshu_p, p_suffix)), sleep()
        driver.execute_script("window.scrollTo(0,2000)"), sleep(1, 2)
        driver.find_element_by_id('like-button-40693328').click(), sleep(1, 2)
        driver.find_element_by_id('like-button-40693328').click()
    elif role == 4:
        p_suffix = "81d5ae85f38a"
        driver.get("{}{}".format(jianshu_p, p_suffix)), sleep()
        driver.execute_script("window.scrollTo(0,3600)"), sleep(1, 2)
        driver.find_element_by_id('like-button-40874580').click(), sleep(1, 2)
        driver.find_element_by_id('like-button-40874580').click()
    elif role == 5:
        p_suffix = "4dca23c2c75a"
        driver.get("{}{}".format(jianshu_p, p_suffix)), sleep()
        driver.execute_script("window.scrollTo(0,3400)"), sleep(1, 2)
        driver.find_element_by_id('like-button-40874520').click(), sleep(1, 2)
        driver.find_element_by_id('like-button-40874520').click()
    elif role == 10:
        p_suffix = "f9a76934b45f"
        driver.get("{}{}".format(jianshu_p, p_suffix)), sleep()
        driver.execute_script("window.scrollTo(0,2500)"), sleep(1, 2)
        driver.find_element_by_id('like-button-40892474').click(), sleep(1, 2)
        driver.find_element_by_id('like-button-40892474').click()
    elif role == 11:
        p_suffix = "8f93afad869f"
        driver.get("{}{}".format(jianshu_p, p_suffix)), sleep()
        driver.execute_script("window.scrollTo(0,3800)"), sleep(1, 2)
        driver.find_element_by_id('like-button-40892368').click(), sleep(1, 2)
        driver.find_element_by_id('like-button-40892368').click()

sleep()
driver.get("{}{}".format(jianshu, "/notifications#/likes")), sleep(1, 2)
driver.get("{}{}".format(jianshu, "/notifications#/others")), sleep(1, 2)
driver.get("{}{}".format(jianshu, "/notifications#/follows")), sleep(1, 2)
driver.get("{}{}".format(jianshu, "/notifications#/money")), sleep(1, 2)
driver.get("{}{}".format(jianshu, "/notifications#/comments"))
driver.quit()
