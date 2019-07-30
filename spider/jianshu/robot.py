import getpass
import logging
import random
import time

from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait

import jsloader
from logger import log


def sleep(min_seconds=3, max_seconds=10):
    """随机休眠"""
    time.sleep(random.randint(min_seconds, max_seconds))


log.Logger('robot.log')
jianshu = "https://www.jianshu.com"
cookie_data = jsloader.load_cookie()
for role, cookie in cookie_data.items():
    # 无头模式
    chrome_dir = r"--user-data-dir=C:\Users\{}\AppData\Local\Google\Chrome\User Data".format(getpass.getuser())
    options = Options()
    options.add_argument(chrome_dir)
    # options.add_argument('--headless')
    driver = webdriver.Chrome(options=options)
    wait = WebDriverWait(driver, 30)
    driver.get(jianshu)
    driver.maximize_window()
    driver.add_cookie({"name": "remember_user_token", "value": cookie})
    sleep()

    try:
        # 1. 收益
        driver.get('{}/mobile/fp?read_mode=night'.format(jianshu))
        elements = wait.until(EC.presence_of_all_elements_located((By.CLASS_NAME, 'order')))
        info = ' ; '.join(map(lambda ele: ele.text, elements))
        logging.info("{} ; {}".format(role, info))

        # 2.消息
        driver.get("{}{}".format(jianshu, "/notifications#/likes")), sleep(1, 2)
        driver.get("{}{}".format(jianshu, "/notifications#/others")), sleep(1, 2)
        driver.get("{}{}".format(jianshu, "/notifications#/follows")), sleep(1, 2)
        driver.get("{}{}".format(jianshu, "/notifications#/money")), sleep(1, 2)
        driver.get("{}{}".format(jianshu, "/notifications#/comments")), sleep(1, 2)

        # 3.评论
        jianshu_p = "{}/p/".format(jianshu)
        comments = {"ac02c56c0865": "38968576", "be27870bdba9": "38969657", "277f1b0a140d": "40692862",
                    "15eb212788fc": "40693328", "81d5ae85f38a": "40874580", "4dca23c2c75a": "40874520",
                    "9aaebad1753a": "42635258", "f3398c00ffc1": "42854890", "e369bb81bcc8": "42855033",
                    "4ec116446717": "42855114", "2d184d128522": "42855181", }
        for comment_id, button_id in comments.items():
            driver.get("{}{}#comment-{}".format(jianshu_p, comment_id, button_id))
            try:
                like_ele = wait.until(EC.element_to_be_clickable((By.ID, 'like-button-{}'.format(button_id))))
                like_ele.click()
                sleep(3, 5)
                like_ele.click()
            except Exception:
                logging.error("Button_Element : {}".format(button_id), Exception)
    except Exception:
        logging.error("{} 重新获取 cookie".format(role), Exception)
        driver.add_cookie({"name": "remember_user_token", "value": ""})
    finally:
        driver.delete_all_cookies()
        driver.close()
        driver.quit()
