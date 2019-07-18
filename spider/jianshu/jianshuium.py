import time
from . import data_

from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait

server = 'http://localhost:4723/wd/hub'
desired_capabilities = {
    "platformName": "Android",
    "deviceName": "WAS_AL00",
    "appPackage": "com.jianshu.haruki",
    "appActivity": "com.baiji.jianshu.MainActivity"
}

data = data_.load_data()
for row in data:
    username, password, role = row

    driver = webdriver.Remote(server, desired_capabilities)
    wait = WebDriverWait(driver, 30)
    short_wait = WebDriverWait(driver, 10)
    long_wait = WebDriverWait(driver, 60)

    # 我的
    ele = wait.until(EC.presence_of_element_located((By.ID, 'com.jianshu.haruki:id/tab_mine')))
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
    login = driver.find_element_by_id('com.jianshu.haruki:id/tv_login')
    login.click()

    # 简书钻 -> 抽奖
    ele = wait.until(EC.presence_of_element_located((By.ID, 'com.jianshu.haruki:id/tab_jsd')))
    ele.click()
    ele = long_wait.until(EC.presence_of_element_located((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
                                                                    'android.widget.FrameLayout/'
                                                                    'android.widget.FrameLayout/'
                                                                    'android.widget.LinearLayout/'
                                                                    'android.widget.FrameLayout/'
                                                                    'android.widget.FrameLayout/'
                                                                    'android.widget.FrameLayout/'
                                                                    'android.support.v4.view.ViewPager/'
                                                                    'android.widget.FrameLayout/'
                                                                    'android.widget.RelativeLayout/'
                                                                    'android.view.ViewGroup/android.widget.FrameLayout/'
                                                                    'android.webkit.WebView/android.webkit.WebView/'
                                                                    'android.view.View[1]/android.view.View[1]/'
                                                                    'android.view.View[17]/android.view.View[3]')))
    ele.click()

    # 每日抽奖
    while True:
        # 1. GO
        ele = wait.until(EC.presence_of_element_located((By.XPATH, '/hierarchy/android.widget.FrameLayout'
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
            # 2. 继续观看
            ele = short_wait.until(EC.presence_of_element_located((By.XPATH, '/hierarchy/android.widget.FrameLayout/'
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
            ele.click()
            # 根据元素是否还可以点击来判断是否还有抽奖次数 todo
        # 3. 关闭
        ele = long_wait.until(EC.presence_of_element_located((By.ID, 'com.jianshu.haruki:id/tt_video_ad_close')))
        ele.click()
        try:
            # 4. 知道了 todo
            time.sleep(5)
            driver.tap([(540, 1335)])
        except:
            pass
