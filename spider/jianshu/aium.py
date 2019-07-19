import random
import time

from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait

import jsloader

server = 'http://localhost:4723/wd/hub'
desired_capabilities = {
    "platformName": "Android",
    "deviceName": "WAS_AL00",
    "appPackage": "com.jianshu.haruki",
    "appActivity": "com.baiji.jianshu.MainActivity"
}

data = jsloader.load_account()
for row in data:
    start = time.time()
    username, password, role, post_num = row
    print("Number{}.".format(role))

    driver = webdriver.Remote(server, desired_capabilities)
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
    ele = wait.until(EC.presence_of_element_located((By.ID, 'com.jianshu.haruki:id/et_verification_code_or_password')))
    ele.send_keys(password)
    ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tv_login')))
    ele.click()

    try:
        # 领钻弹框
        ele = short_wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tv_cancel')))
    except:
        pass
    else:
        ele.click()

    # 简书钻 -> 天天抽奖
    ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tab_jsd')))
    ele.click()
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
                                                                    'android.view.View[3]')))
    ele.click()

    # 一. 抽奖
    while True:
        # 1. GO
        ele = long_wait.until(EC.element_to_be_clickable((By.XPATH, '/hierarchy/android.widget.FrameLayout'
                                                                    '/android.widget.FrameLayout/'
                                                                    'android.widget.FrameLayout/'
                                                                    'android.widget.LinearLayout/'
                                                                    'android.widget.FrameLayout/'
                                                                    'android.widget.FrameLayout/'
                                                                    'android.widget.FrameLayout/'
                                                                    'android.widget.FrameLayout/'
                                                                    'android.widget.FrameLayout/'
                                                                    'android.widget.RelativeLayout/'
                                                                    'android.view.ViewGroup/'
                                                                    'android.widget.FrameLayout/android.webkit.WebView/'
                                                                    'android.webkit.WebView/android.view.View/'
                                                                    'android.view.View[1]/android.view.View[1]/'
                                                                    'android.view.View[2]/android.view.View[2]')))
        ele.click()

        keep_watch = False
        try:
            # 2. 继续观看(根据元素文字来判断是否还有抽奖次数)
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
                                                                         'android.view.View/'
                                                                         'android.view.View[1]/'
                                                                         'android.view.View[2]/'
                                                                         'android.view.View[2]/'
                                                                         'android.view.View[2]')))
        except:
            pass
        else:
            text = ele.text
            print(text)
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
                                                                             'android.view.View[2]/'
                                                                             'android.view.View[2]/'
                                                                             'android.widget.Button')))
                ele.click()
        except:
            print(" 奖励异常，后退重进")
            ele = short_wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/close')))
            ele.click()
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
                                                                            'android.view.View[3]')))
            ele.click()

    print("Number{}.用时{}秒".format(role, int(time.time() - start)))

    # 二. 发文
    driver.back()
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
                                                 'android.widget.LinearLayout/android.widget.HorizontalScrollView/'
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
        # 公开发布
        ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tv_action_public')))
        ele.click()
        # 两次返回
        driver.back()
        driver.back()

    # 三. 浏览+收藏
    driver.back()
    # 关注列表
    ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/login_follow_text')))
    ele.click()

    # 随机用户
    i = random.randint(1, 6)
    ele = wait.until(EC.element_to_be_clickable((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                           'android.widget.FrameLayout/'
                                                           'android.widget.FrameLayout/'
                                                           'android.widget.LinearLayout/'
                                                           'android.widget.FrameLayout/'
                                                           'android.widget.FrameLayout/'
                                                           'android.widget.LinearLayout/'
                                                           'android.support.v4.view.ViewPager/'
                                                           'android.widget.FrameLayout/'
                                                           'android.widget.FrameLayout/'
                                                           'android.view.ViewGroup/'
                                                           'android.support.v7.widget.RecyclerView/'
                                                           'android.widget.RelativeLayout[{}]'.format(i))))
    ele.click()


    def get_screen_size():
        """ 屏幕大小 """

        x = driver.get_window_size()['width']
        y = driver.get_window_size()['height']
        return x, y


    def swipe_up(t):
        """ 屏幕上滑 """

        screen_size = get_screen_size()
        x1 = int(screen_size[0] * 0.5)  # x坐标
        y1 = int(screen_size[1] * 0.75)  # 起始y坐标
        y2 = int(screen_size[1] * 0.25)  # 终点y坐标
        driver.swipe(x1, y1, x1, y2, t)


    def swipe_down(t):
        """ 屏幕下滑 """

        screen_size = get_screen_size()
        x1 = int(screen_size[0] * 0.5)  # x坐标
        y1 = int(screen_size[1] * 0.25)  # 起始y坐标
        y2 = int(screen_size[1] * 0.75)  # 终点y坐标
        driver.swipe(x1, y1, x1, y2, t)


    # 浏览文章
    for i in range(1, 20):
        ele = wait.until(EC.element_to_be_clickable((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                               'android.widget.FrameLayout/'
                                                               'android.widget.FrameLayout/'
                                                               'android.widget.LinearLayout/'
                                                               'android.widget.FrameLayout/'
                                                               'android.widget.FrameLayout/'
                                                               'android.widget.FrameLayout/'
                                                               'android.view.ViewGroup/'
                                                               'android.support.v4.view.ViewPager/'
                                                               'android.widget.FrameLayout/'
                                                               'android.widget.FrameLayout/'
                                                               'android.widget.LinearLayout/'
                                                               'android.view.ViewGroup/'
                                                               'android.support.v7.widget.RecyclerView/'
                                                               'android.widget.LinearLayout[{}]'.format(i))))
        ele.click()

        # 点击更多
        ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/action_more')))
        ele.click()
        # 收藏文章
        ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tv_bookmark')))
        if ele.text == '收藏':
            ele.click()
        # 下滑浏览
        for j in range(0, 10):
            swipe_down(100)
            time.sleep(1)
        # 后退下滑
        driver.back()
        swipe_down(100)

    # 四、签到
    driver.back()
    driver.back()
    ele = wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tab_jsd')))
    ele.click()
    # 任务领钻
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
    try:
        # 每日签到
        ele = wait.until(EC.element_to_be_clickable((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                               'android.widget.FrameLayout/'
                                                               'android.widget.FrameLayout/'
                                                               'android.widget.LinearLayout/'
                                                               'android.widget.FrameLayout/'
                                                               'android.widget.FrameLayout/'
                                                               'android.widget.FrameLayout/'
                                                               'android.widget.FrameLayout/'
                                                               'android.widget.FrameLayout/'
                                                               'android.widget.RelativeLayout/'
                                                               'android.view.ViewGroup/android.widget.FrameLayout/'
                                                               'android.webkit.WebView/android.webkit.WebView/'
                                                               'android.view.View[1]/android.view.View[1]/'
                                                               'android.view.View[3]/android.view.View/'
                                                               'android.view.View[1]')))
    except:
        pass
    else:
        ele.click()

    # 五、退出APP
    driver.close_app()
