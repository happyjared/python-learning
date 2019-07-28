import logging
import time

from appium import webdriver
from math import floor
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait

import jsloader
from logger import log

log.Logger()
server = 'http://localhost:4723/wd/hub'
desired_capabilities = {
    "platformName": "Android",
    "deviceName": "WAS_AL00",
    "appPackage": "com.jianshu.haruki",
    "appActivity": "com.baiji.jianshu.MainActivity",
    'unicodeKeyboard': True,  # 是使用unicode编码方式发送字符串
    'resetKeyboard': True,  # 隐藏键盘
    # 'noReset': True # 不清空会话
}

data = jsloader.load_account("jsdata")
comment_data = jsloader.load_comment()
while len(data) > 0:
    for account in data:
        start = time.time()
        username, password, role, post_num = account.username, account.password, account.role, account.post_num
        if post_num <= 0:
            data.remove(account)
            break
        logging.info("Number{}.".format(role))

        driver = webdriver.Remote(server, desired_capabilities)
        try:
            wait = WebDriverWait(driver, 30)
            short_wait = WebDriverWait(driver, 10)
            long_wait = WebDriverWait(driver, 60)
            max_long_wait = WebDriverWait(driver, 100)

            # 我的
            ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tab_mine')))
            ele.click()
            ele = wait.until(EC.presence_of_element_located((By.ID, 'com.jianshu.haruki:id/user_top_info_avatar')))
            ele.click()

            # 登录
            ele = wait.until(EC.presence_of_element_located((By.ID, 'com.jianshu.haruki:id/tv_switch_login_mode')))
            ele.click()
            ele = wait.until(EC.presence_of_element_located((By.ID, 'com.jianshu.haruki:id/et_account')))
            ele.send_keys(username)
            ele = wait.until(
                EC.presence_of_element_located((By.ID, 'com.jianshu.haruki:id/et_verification_code_or_password')))
            ele.send_keys(password)
            ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tv_login')))
            ele.click()
            logging.info("Number{}.登录用时{}秒".format(role, int(time.time() - start)))

            try:
                # 领钻弹框
                ele = short_wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tv_cancel')))
            except:
                pass
            else:
                ele.click()

            # 简书钻
            ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tab_jsd')))
            ele.click()

            """ 当天收益 """
            ele = wait.until(EC.presence_of_element_located((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.LinearLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.LinearLayout/'
                                                                       'android.support.v4.view.ViewPager/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.RelativeLayout/'
                                                                       'android.view.ViewGroup/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.webkit.WebView/'
                                                                       'android.webkit.WebView/'
                                                                       'android.view.View[1]/'
                                                                       'android.view.View[1]/'
                                                                       'android.view.View[4]/'
                                                                       'android.view.View[1]/android.view.View')))
            logging.info(ele.text)

            """ 持有借钻 """
            time.sleep(5)
            ele = wait.until(EC.presence_of_element_located((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.LinearLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.LinearLayout/'
                                                                       'android.support.v4.view.ViewPager/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.RelativeLayout/'
                                                                       'android.view.ViewGroup/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.webkit.WebView/'
                                                                       'android.webkit.WebView/'
                                                                       'android.view.View[1]/'
                                                                       'android.view.View[1]/'
                                                                       'android.view.View[15]')))
            hole_jz_num = 10000
            if ele.text.find("持有借钻") != -1:
                hole_jz_num = floor(float(ele.text.replace("持有借钻: ", "")))
            logging.info(ele.text + "/" + str(hole_jz_num))

            try:
                """ 签到 """
                start = time.time()
                ele = long_wait.until(EC.presence_of_element_located((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                                'android.widget.FrameLayout/'
                                                                                'android.widget.FrameLayout/'
                                                                                'android.widget.LinearLayout/'
                                                                                'android.widget.FrameLayout/'
                                                                                'android.widget.FrameLayout/'
                                                                                'android.widget.LinearLayout/'
                                                                                'android.support.v4.view.ViewPager/'
                                                                                'android.widget.FrameLayout/'
                                                                                'android.widget.RelativeLayout/'
                                                                                'android.view.ViewGroup/'
                                                                                'android.widget.FrameLayout/'
                                                                                'android.webkit.WebView/'
                                                                                'android.webkit.WebView/'
                                                                                'android.view.View[1]/'
                                                                                'android.view.View[1]/'
                                                                                'android.view.View[17]/'
                                                                                'android.view.View[1]')))
                ele.click()
                # 每日签到
                ele = short_wait.until(EC.element_to_be_clickable((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                             'android.widget.FrameLayout/'
                                                                             'android.widget.FrameLayout/'
                                                                             'android.widget.LinearLayout/'
                                                                             'android.widget.FrameLayout/'
                                                                             'android.widget.FrameLayout/'
                                                                             'android.widget.FrameLayout/'
                                                                             'android.widget.FrameLayout/'
                                                                             'android.widget.FrameLayout/'
                                                                             'android.widget.RelativeLayout/'
                                                                             'android.view.ViewGroup/'
                                                                             'android.widget.FrameLayout/'
                                                                             'android.webkit.WebView/'
                                                                             'android.webkit.WebView/'
                                                                             'android.view.View[1]/'
                                                                             'android.view.View[1]/'
                                                                             'android.view.View[3]/'
                                                                             'android.view.View/'
                                                                             'android.view.View[1]')))
            except:
                pass
            else:
                ele.click()
            finally:
                logging.info("Number{}.签到用时{}秒".format(role, int(time.time() - start)))

            """ 领钻 """
            start = time.time()
            ele = wait.until(EC.presence_of_element_located((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.LinearLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.RelativeLayout/'
                                                                       'android.view.ViewGroup/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.webkit.WebView/'
                                                                       'android.webkit.WebView/'
                                                                       'android.view.View[1]/'
                                                                       'android.view.View[1]/'
                                                                       'android.view.View[2]/'
                                                                       'android.view.View[5]/'
                                                                       'android.view.View[1]')))
            receive = 0
            jz_num = int(ele.text)
            while hole_jz_num < 5000 and jz_num > 0 and receive < 10:
                # 领取
                ele = wait.until(EC.presence_of_element_located((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.LinearLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.RelativeLayout/'
                                                                           'android.view.ViewGroup/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.webkit.WebView/'
                                                                           'android.webkit.WebView/'
                                                                           'android.view.View[1]/'
                                                                           'android.view.View[1]/'
                                                                           'android.view.View[2]/'
                                                                           'android.view.View[5]/'
                                                                           'android.widget.Button[1]')))
                ele.click()
                # 完成
                ele = wait.until(EC.presence_of_element_located((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.LinearLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.RelativeLayout/'
                                                                           'android.view.ViewGroup/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.webkit.WebView/'
                                                                           'android.webkit.WebView/'
                                                                           'android.view.View[1]/'
                                                                           'android.view.View[1]/'
                                                                           'android.view.View[3]/'
                                                                           'android.view.View/'
                                                                           'android.view.View[2]/'
                                                                           'android.widget.Button')))
                ele.click()
                ele = wait.until(EC.presence_of_element_located((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.LinearLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.RelativeLayout/'
                                                                           'android.view.ViewGroup/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.webkit.WebView/'
                                                                           'android.webkit.WebView/'
                                                                           'android.view.View[1]/'
                                                                           'android.view.View[1]/'
                                                                           'android.view.View[2]/'
                                                                           'android.view.View[5]/'
                                                                           'android.view.View[1]')))
                jz_num = int(ele.text)
                receive += 1
            logging.info("Number{}.领钻用时{}秒".format(role, int(time.time() - start)))

            # 后退
            time.sleep(2)
            driver.back()
            time.sleep(5)

            """ 抽奖 """
            start = time.time()
            ele = long_wait.until(EC.element_to_be_clickable((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                        'android.widget.FrameLayout/'
                                                                        'android.widget.FrameLayout/'
                                                                        'android.widget.LinearLayout/'
                                                                        'android.widget.FrameLayout/'
                                                                        'android.widget.FrameLayout/'
                                                                        'android.widget.LinearLayout/'
                                                                        'android.support.v4.view.ViewPager/'
                                                                        'android.widget.FrameLayout/'
                                                                        'android.widget.RelativeLayout/'
                                                                        'android.view.ViewGroup/'
                                                                        'android.widget.FrameLayout/'
                                                                        'android.webkit.WebView/'
                                                                        'android.webkit.WebView/'
                                                                        'android.view.View[1]/'
                                                                        'android.view.View[1]/'
                                                                        'android.view.View[17]/'
                                                                        'android.view.View[3]')))
            ele.click()
            while True:
                # 1. GO
                ele = long_wait.until(EC.element_to_be_clickable((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                            'android.widget.FrameLayout/'
                                                                            'android.widget.FrameLayout/'
                                                                            'android.widget.LinearLayout/'
                                                                            'android.widget.FrameLayout/'
                                                                            'android.widget.FrameLayout/'
                                                                            'android.widget.FrameLayout/'
                                                                            'android.widget.FrameLayout/'
                                                                            'android.widget.FrameLayout/'
                                                                            'android.widget.RelativeLayout/'
                                                                            'android.view.ViewGroup/'
                                                                            'android.widget.FrameLayout/'
                                                                            'android.webkit.WebView/'
                                                                            'android.webkit.WebView/android.view.View/'
                                                                            'android.view.View[1]/android.view.View[1]/'
                                                                            'android.view.View[2]/android.view.View[2]')))
                ele.click()

                keep_watch = False
                try:
                    # 2. 继续观看(根据元素文字来判断是否还有抽奖次数)
                    ele = short_wait.until(
                        EC.element_to_be_clickable((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                              'android.widget.FrameLayout/'
                                                              'android.widget.FrameLayout/'
                                                              'android.widget.LinearLayout/'
                                                              'android.widget.FrameLayout/'
                                                              'android.widget.FrameLayout/'
                                                              'android.widget.FrameLayout/'
                                                              'android.widget.FrameLayout/'
                                                              'android.widget.FrameLayout/'
                                                              'android.widget.RelativeLayout/'
                                                              'android.view.ViewGroup/'
                                                              'android.widget.FrameLayout/'
                                                              'android.webkit.WebView/'
                                                              'android.webkit.WebView/'
                                                              'android.view.View/'
                                                              'android.view.View[1]/'
                                                              'android.view.View[2]/'
                                                              'android.view.View[2]/'
                                                              'android.view.View[2]')))
                except:
                    pass
                else:
                    text = ele.text
                    logging.info(text)
                    if text.find('今日已用完') != -1:
                        break
                    ele.click()
                    keep_watch = True

                try:
                    # 3. 关闭广告
                    ele = max_long_wait.until(
                        EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tt_video_ad_close')))
                    ele.click()
                    if not keep_watch:
                        # 4. 知道了
                        ele = short_wait.until(
                            EC.element_to_be_clickable((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                  'android.widget.FrameLayout/'
                                                                  'android.widget.FrameLayout/'
                                                                  'android.widget.LinearLayout/'
                                                                  'android.widget.FrameLayout/'
                                                                  'android.widget.FrameLayout/'
                                                                  'android.widget.FrameLayout/'
                                                                  'android.widget.FrameLayout/'
                                                                  'android.widget.FrameLayout/'
                                                                  'android.widget.RelativeLayout/'
                                                                  'android.view.ViewGroup/'
                                                                  'android.widget.FrameLayout/'
                                                                  'android.webkit.WebView/'
                                                                  'android.webkit.WebView/'
                                                                  'android.view.View[1]/'
                                                                  'android.view.View[1]/'
                                                                  'android.view.View[2]/'
                                                                  'android.view.View[2]/'
                                                                  'android.widget.Button')))
                        ele.click()
                except:
                    logging.info("奖励异常，后退重进")
                    ele = short_wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/close')))
                    ele.click()
                    time.sleep(3)
                    ele = long_wait.until(
                        EC.presence_of_element_located((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                  'android.widget.FrameLayout/'
                                                                  'android.widget.FrameLayout/'
                                                                  'android.widget.LinearLayout/'
                                                                  'android.widget.FrameLayout/'
                                                                  'android.widget.FrameLayout/'
                                                                  'android.widget.LinearLayout/'
                                                                  'android.support.v4.view.ViewPager/'
                                                                  'android.widget.FrameLayout/'
                                                                  'android.widget.RelativeLayout/'
                                                                  'android.view.ViewGroup/'
                                                                  'android.widget.FrameLayout/'
                                                                  'android.webkit.WebView/'
                                                                  'android.webkit.WebView/'
                                                                  'android.view.View[1]/'
                                                                  'android.view.View[1]/'
                                                                  'android.view.View[17]/'
                                                                  'android.view.View[3]')))
                    ele.click()
            logging.info("Number{}.抽奖用时{}秒".format(role, int(time.time() - start)))

            time.sleep(2)
            driver.back()

            """ 贝转钻 """
            start = time.time()
            ele = long_wait.until(EC.presence_of_element_located((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                            'android.widget.FrameLayout/'
                                                                            'android.widget.FrameLayout/'
                                                                            'android.widget.LinearLayout/'
                                                                            'android.widget.FrameLayout/'
                                                                            'android.widget.FrameLayout/'
                                                                            'android.widget.LinearLayout/'
                                                                            'android.support.v4.view.ViewPager/'
                                                                            'android.widget.FrameLayout/'
                                                                            'android.widget.RelativeLayout/'
                                                                            'android.view.ViewGroup/'
                                                                            'android.widget.FrameLayout/'
                                                                            'android.webkit.WebView/'
                                                                            'android.webkit.WebView/'
                                                                            'android.view.View[1]/'
                                                                            'android.view.View[1]/'
                                                                            'android.view.View[10]')))
            jsb_num = floor(float(ele.text))
            if jsb_num > 0:
                ele = wait.until(EC.presence_of_element_located((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.LinearLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.LinearLayout/'
                                                                           'android.support.v4.view.ViewPager/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.RelativeLayout/'
                                                                           'android.view.ViewGroup/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.webkit.WebView/'
                                                                           'android.webkit.WebView/'
                                                                           'android.view.View[1]/'
                                                                           'android.view.View[1]/'
                                                                           'android.view.View[12]')))
                ele.click()
                # 输入数量
                ele = wait.until(EC.presence_of_element_located((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.LinearLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.RelativeLayout/'
                                                                           'android.view.ViewGroup/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.webkit.WebView/'
                                                                           'android.webkit.WebView/'
                                                                           'android.view.View[1]/'
                                                                           'android.view.View[1]/'
                                                                           'android.view.View[2]/'
                                                                           'android.widget.EditText')))
                ele.click()
                ele.send_keys(jsb_num)
                ele = wait.until(EC.presence_of_element_located((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.LinearLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.widget.RelativeLayout/'
                                                                           'android.view.ViewGroup/'
                                                                           'android.widget.FrameLayout/'
                                                                           'android.webkit.WebView/'
                                                                           'android.webkit.WebView/'
                                                                           'android.view.View[1]/'
                                                                           'android.view.View[1]/'
                                                                           'android.widget.Button')))
                ele.click()
                # 确认转换
            logging.info("Number{}.转钻用时{}秒".format(role, int(time.time() - start)))

            time.sleep(2)

            """ 发文 """
            start = time.time()
            ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tab_mine')))
            # 我的文章
            ele.click()
            ele = wait.until(EC.element_to_be_clickable((By.XPATH,
                                                         '/hierarchy/android.widget.FrameLayout/'
                                                         'android.widget.FrameLayout/'
                                                         'android.widget.FrameLayout/'
                                                         'android.widget.LinearLayout/'
                                                         'android.widget.FrameLayout/'
                                                         'android.widget.FrameLayout/'
                                                         'android.widget.LinearLayout/'
                                                         'android.support.v4.view.ViewPager/'
                                                         'android.widget.LinearLayout/'
                                                         'android.view.ViewGroup/'
                                                         'android.support.v7.widget.RecyclerView/'
                                                         'android.widget.LinearLayout[2]/'
                                                         'android.widget.LinearLayout/'
                                                         'android.widget.LinearLayout/'
                                                         'android.widget.RelativeLayout[1]/'
                                                         'android.widget.RelativeLayout')))
            ele.click()
            # 私密文章
            ele = wait.until(EC.element_to_be_clickable((By.XPATH,
                                                         '/hierarchy/android.widget.FrameLayout/'
                                                         'android.widget.FrameLayout/android.widget.FrameLayout/'
                                                         'android.widget.LinearLayout/android.widget.FrameLayout/'
                                                         'android.widget.FrameLayout/android.widget.FrameLayout/'
                                                         'android.widget.LinearLayout/'
                                                         'android.widget.HorizontalScrollView/'
                                                         'android.widget.LinearLayout/'
                                                         'android.support.v7.app.ActionBar.Tab[2]')))
            ele.click()
            # 循环发布
            for i in range(0, post_num):
                # 进入文章
                ele = wait.until(EC.element_to_be_clickable((By.XPATH,
                                                             '/hierarchy/android.widget.FrameLayout/'
                                                             'android.widget.FrameLayout/'
                                                             'android.widget.FrameLayout/'
                                                             'android.widget.LinearLayout/'
                                                             'android.widget.FrameLayout/'
                                                             'android.widget.FrameLayout/'
                                                             'android.widget.FrameLayout/'
                                                             'android.widget.LinearLayout/'
                                                             'android.support.v4.view.ViewPager/'
                                                             'android.widget.FrameLayout/'
                                                             'android.widget.LinearLayout/'
                                                             'android.widget.FrameLayout/'
                                                             'android.view.ViewGroup/android.widget.FrameLayout/'
                                                             'android.support.v7.widget.RecyclerView/'
                                                             'android.widget.RelativeLayout[1]')))
                ele.click()
                # 发布
                ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tv_action_public')))
                ele.click()
                # 点赞
                ele = wait.until(EC.element_to_be_clickable((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.LinearLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.ScrollView/'
                                                                       'android.widget.LinearLayout/'
                                                                       'android.widget.LinearLayout[1]/'
                                                                       'android.widget.FrameLayout[3  ]/'
                                                                       'android.widget.RelativeLayout/'
                                                                       'android.widget.FrameLayout/'
                                                                       'android.widget.ImageView')))
                ele.click()
                try:
                    # 返回
                    time.sleep(2)
                    driver.back()
                    time.sleep(2)
                    # ele = short_wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/iv_nav')))
                    # ele.click()
                    # 点击更多
                    ele = short_wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/action_more')))
                    ele.click()
                    # 收藏文章
                    ele = short_wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/menu_bookmark')))
                    ele.click()
                except:
                    pass
                # 返回
                time.sleep(2)
                driver.back()
                account.post_num = account.post_num - 1
            logging.info("Number{}.发文用时{}秒".format(role, int(time.time() - start)))

            # def get_screen_size():
            #     """ 屏幕大小 """
            #
            #     x = driver.get_window_size()['width']
            #     y = driver.get_window_size()['height']
            #     return x, y
            #
            #
            # def swipe_up(t):
            #     """ 向上滑动，屏幕下滑 """
            #
            #     screen_size = get_screen_size()
            #     x1 = int(screen_size[0] * 0.5)  # x坐标
            #     y1 = int(screen_size[1] * 0.6)  # 起始y坐标
            #     y2 = int(screen_size[1] * 0.25)  # 终点y坐标
            #     driver.swipe(x1, y1, x1, y2, t)
            #
            #
            # """ 关注 """
            # start = time.time()
            # driver.back()
            # # 关注列表
            # ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/login_follow_text')))
            # ele.click()
            # for i in range(1, 7):
            #     ele = wait.until(EC.element_to_be_clickable((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
            #                                                            'android.widget.FrameLayout/'
            #                                                            'android.widget.FrameLayout/'
            #                                                            'android.widget.LinearLayout/'
            #                                                            'android.widget.FrameLayout/'
            #                                                            'android.widget.FrameLayout/'
            #                                                            'android.widget.LinearLayout/'
            #                                                            'android.support.v4.view.ViewPager/'
            #                                                            'android.widget.FrameLayout/'
            #                                                            'android.widget.FrameLayout/'
            #                                                            'android.view.ViewGroup/'
            #                                                            'android.support.v7.widget.RecyclerView/'
            #                                                            'android.widget.RelativeLayout[{}]'.format(i))))
            #     ele.click()
            #
            #     swipe_up(random.randint(600, 800))
            #
            #     # 浏览文章
            #     for j in range(1, 5):
            #         ele = wait.until(EC.element_to_be_clickable((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
            #                                                                'android.widget.FrameLayout/'
            #                                                                'android.widget.FrameLayout/'
            #                                                                'android.widget.LinearLayout/'
            #                                                                'android.widget.FrameLayout/'
            #                                                                'android.widget.FrameLayout/'
            #                                                                'android.widget.FrameLayout/'
            #                                                                'android.view.ViewGroup/'
            #                                                                'android.support.v4.view.ViewPager/'
            #                                                                'android.widget.FrameLayout/'
            #                                                                'android.widget.FrameLayout/'
            #                                                                'android.widget.LinearLayout/'
            #                                                                'android.view.ViewGroup/'
            #                                                                'android.support.v7.widget.RecyclerView/'
            #                                                                'android.widget.LinearLayout[{}]'.format(j))))
            #         ele.click()
            #
            #         # 点击更多
            #         ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/action_more')))
            #         ele.click()
            #         # 收藏文章
            #         ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tv_bookmark')))
            #         if ele.text == '收藏':
            #             ele.click()
            #         else:
            #             driver.tap([(18, 1235)])
            #             swipe_up(800)
            #         # 点赞文章
            #         ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tv_vote_up')))
            #         selected = ele.get_attribute("selected")
            #         if selected == 'false':
            #             ele.click()
            #             swipe_up(800)
            #         # 评论文章
            #         ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tv_write_comment')))
            #         ele.click()
            #         ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/edit_comment')))
            #         ele.click()
            #         ele.send_keys(random.choice(comment_data))
            #         ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/text_comment_send')))
            #         ele.click()
            #         # 后退下滑
            #         time.sleep(random.randint(2, 3))
            #         driver.back()
            #         time.sleep(random.randint(2, 3))
            #
            #     # 返回
            #     ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/iv_toolbar_back')))
            #     ele.click()
            # logging.info("Number{}.关注用时{}秒".format(role, int(time.time() - start)))
        except Exception as e:
            logging.error("Role {} 操作异常".format(str(role)), e)
        finally:
            """ 退出APP """
            driver.close_app()
            driver.quit()
