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
    username, password, role = row
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

    # 领钻弹框
    try:
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

    # 抽奖
    while True:
        # 1. GO
        ele = wait.until(EC.element_to_be_clickable((By.XPATH, '/hierarchy/android.widget.FrameLayout'
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
        try:
            # 2. 继续观看(根据元素文字来判断是否还有抽奖次数)
            clickable = EC.element_to_be_clickable((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
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
                                                              'android.view.View[2]'))
            ele = short_wait.until(clickable)
        except:
            pass
        else:
            text = ele.text
            print(text)
            if text.find('今日已用完') != -1:
                break
            ele.click()
        # 3. 关闭
        ele = max_long_wait.until(EC.element_to_be_clickable((By.ID, 'com.jianshu.haruki:id/tt_video_ad_close')))
        ele.click()
        try:
            # 4. 知道了
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
                                                                   'android.view.ViewGroup/'
                                                                   'android.widget.FrameLayout/'
                                                                   'android.webkit.WebView/'
                                                                   'android.webkit.WebView/'
                                                                   'android.view.View[1]/'
                                                                   'android.view.View[1]/'
                                                                   'android.view.View[2]/'
                                                                   'android.view.View[2]/'
                                                                   'android.widget.Button')))
        except:
            # 奖励异常，后退重进
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
        else:
            ele.click()

    print("Number{}.用时{}秒".format(role, int(time.time() - start)))
    driver.close_app()
    driver.close()
    driver.quit()
