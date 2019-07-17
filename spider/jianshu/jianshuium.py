import time
from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

# Appium Server, 端口默认为4723

server = 'http://localhost:4723/wd/hub'
desired_capabilities = {
    "platformName": "Android",
    "deviceName": "WAS_AL00",
    "appPackage": "com.jianshu.haruki",
    "appActivity": "com.baiji.jianshu.MainActivity"
}

driver = webdriver.Remote(server, desired_capabilities)
wait = WebDriverWait(driver, 10)

# 点击“我的”
ele = wait.until(EC.presence_of_element_located((By.ID, 'com.jianshu.haruki:id/tab_mine')))
ele.click()
ele = wait.until(EC.presence_of_element_located((By.ID, 'com.jianshu.haruki:id/user_top_info_avatar')))
ele.click()

# 登录
ele = wait.until(EC.presence_of_element_located((By.ID, 'com.jianshu.haruki:id/tv_switch_login_mode')))
ele.click()
ele = wait.until(EC.presence_of_element_located((By.ID, 'com.jianshu.haruki:id/et_account')))
ele.send_keys('')
ele = wait.until(EC.presence_of_element_located((By.ID, 'com.jianshu.haruki:id/et_verification_code_or_password')))
ele.send_keys('')
login = driver.find_element_by_id('com.jianshu.haruki:id/tv_login')
login.click()

time.sleep(3)

driver.tap([(535, 1810)])
time.sleep(10)
driver.tap([(525, 1530)])
time.sleep(5)
while True:
    driver.tap([(525, 1160)])
    time.sleep(35)
    driver.tap([(980, 150)])
    driver.tap([(545, 1020)])
