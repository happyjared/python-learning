import logging
import os
import platform
import random
import sys
import time

from selenium import webdriver
from selenium.webdriver.chrome.options import Options

argv = sys.argv
argv_length = len(argv)

username = argv[1] if argv_length > 1 else input("请输入登录账号\n")
password = argv[2] if argv_length > 2 else input("请输入登录密码\n")
role = int(argv[3]) if argv_length > 3 else input("请输入Role\n")

if platform.system() == "Linux":
    os.system('ps -ef | grep chrome | awk "{print \$2}" | xargs kill -9')


def sleep(min_seconds=3, max_seconds=10):
    """随机休眠"""
    time.sleep(random.randint(min_seconds, max_seconds))


logging.basicConfig(level='INFO', filename='info.log',
                    format='%(asctime)s %(filename)s[%(lineno)d] %(name)s (%(levelname)s): %(message)s')
# 无头模式
options = Options()
options.add_argument('--headless')
options.add_argument('log-level=3')
options.add_argument('--no-sandbox')
options.add_argument('--disable-gpu')
options.add_argument('window-size=1366x728')
options.add_argument('--disable-dev-shm-usage')
options.add_argument('blink-settings=imagesEnabled=false')
driver = webdriver.Chrome(chrome_options=options)

# 登录简书
jianshu = "https://www.jianshu.com"
driver.get("{}/sign_in".format(jianshu))
driver.maximize_window()

# 豆瓣登录
driver.find_element_by_xpath("/html/body/div[1]/div[2]/div/div/ul/li[4]").click()
driver.find_element_by_class_name("douban").click()
sleep()

# 切换窗口
driver.close()
window_handles = driver.window_handles
driver.switch_to.window(window_handles[-1])
driver.find_element_by_id("inp-alias").send_keys(username)
driver.find_element_by_id("inp-pwd").send_keys(password)

try:
    driver.find_element_by_xpath("/html/body/div/div[2]/form[2]/div[4]/input[1]").click()
except:
    logging.info("{} : 登录失败".format(role))
else:
    sleep()

    page_title = driver.title
    logging.info("{} ：{}".format(role, page_title))

    # 1. 收益
    driver.get('{}/mobile/fp?read_mode=night'.format(jianshu)), sleep(1, 2)
    elements = driver.find_elements_by_class_name("order")
    info = ' ; '.join(map(lambda ele: ele.text, elements[1:]))
    logging.info("{} : {}".format(role, info))
    sleep()

    # 2.写文
    # driver.get("{}/writer#/".format(jianshu)), sleep()
    # driver.find_element_by_css_selector("i[class='fa fa-plus-circle']").click(), sleep()
    #
    # if role == 0 or role == 1:
    #     title_prefix = "早晨" if is_day else "晚安"
    #     title_prefix2 = "每日一言" if role == 0 else "一言美句"
    #     driver.find_element_by_class_name("_24i7u").send_keys(Keys.HOME)
    #     driver.find_element_by_class_name("_24i7u").send_keys((title_prefix + "！" + title_prefix2 + "："))
    # else:
    #     resp = requests.get("https://v1.hitokoto.cn/").json()
    #     title = resp.get('hitokoto')
    #     driver.find_element_by_class_name("_24i7u").clear()
    #     driver.find_element_by_class_name("_24i7u").send_keys(title)
    #
    # content, editor, count = "", "arthur-editor", 0
    # while len(content) < 600:
    #     api = random.choice(('international.v1.hitokoto.cn', "v1.hitokoto.cn"))
    #     resp = requests.get("https://{}".format(api)).json()
    #     hitokoto = resp.get("hitokoto")
    #     if hitokoto:
    #         count += 1
    #         content += hitokoto.strip()
    #         driver.find_element_by_id(editor).send_keys(str(count) + ". " + hitokoto)
    #         driver.find_element_by_id(editor).send_keys(Keys.ENTER)
    #         driver.find_element_by_id(editor).send_keys(Keys.ENTER)
    #
    # end = '> 动漫也好、小说也罢，不论在哪里，总会看到有那么一两个句子能穿透你的心，这就是一言。'
    # driver.find_element_by_id(editor).send_keys(end)
    # driver.find_element_by_css_selector("i[class='fa fa-mail-forward']").click()
    # sleep()

    # 3.消息
    driver.get("{}{}".format(jianshu, "/notifications#/likes")), sleep(1, 2)
    driver.get("{}{}".format(jianshu, "/notifications#/others")), sleep(1, 2)
    driver.get("{}{}".format(jianshu, "/notifications#/follows")), sleep(1, 2)
    driver.get("{}{}".format(jianshu, "/notifications#/money")), sleep(1, 2)
    driver.get("{}{}".format(jianshu, "/notifications#/comments")), sleep(1, 2)
    sleep()

    # 4.评论
    jianshu_p = "{}/p/".format(jianshu)
    comments = {"ac02c56c0865": "38968576", "be27870bdba9": "38969657", "277f1b0a140d": "40692862",
                "15eb212788fc": "40693328", "81d5ae85f38a": "40874580", "4dca23c2c75a": "40874520",
                "9aaebad1753a": "42635258", "f3398c00ffc1": "42854890", "e369bb81bcc8": "42855033",
                "4ec116446717": "42855114", "2d184d128522": "42855181", }
    for comment_id, button_id in comments.items():
        driver.get("{}{}#comment-{}".format(jianshu_p, comment_id, button_id)), sleep(3, 5)
        button_element = 'like-button-{}'.format(button_id)
        try:
            driver.find_element_by_id(button_element).click(), sleep(3, 5)
            driver.find_element_by_id(button_element).click()
        except:
            pass
finally:
    driver.close()
    driver.quit()
