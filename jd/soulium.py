import time
from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC


def auth():
    ask = wait.until(EC.presence_of_element_located((By.ID, 'com.android.packageinstaller:id/do_not_ask_checkbox')))
    ask.click()
    allow = wait.until(
        EC.presence_of_element_located((By.ID, 'com.android.packageinstaller:id/permission_allow_button')))
    allow.click()


server = 'http://localhost:4723/wd/hub'
desired_caps = {
    "platformName": "Android",
    "deviceName": "WAS_AL00",
    "appPackage": "cn.soulapp.android",
    "appActivity": "cn.soulapp.android.ui.splash.SplashActivity"
}

driver = webdriver.Remote(server, desired_caps)
wait = WebDriverWait(driver, 10)

# 1.动画页
skip = wait.until(EC.presence_of_element_located((By.ID, 'cn.soulapp.android:id/llSkip')))
skip.click()

# 2.进入页
into = wait.until(EC.presence_of_element_located((By.ID, 'cn.soulapp.android:id/btn_newUser')))
into.click()

# 3.账号页
phone = wait.until(EC.presence_of_element_located((By.ID, 'cn.soulapp.android:id/etPhone')))
phone.click()
phone.send_keys('13709641713')
confirm = wait.until(EC.presence_of_element_located((By.ID, 'cn.soulapp.android:id/rlConfirm')))
confirm.click()

# 4.密码页
password = wait.until(EC.presence_of_element_located((By.ID, 'cn.soulapp.android:id/etPwd')))
password.click()
password.send_keys('jdq.soul')
driver.back()
login = wait.until(EC.presence_of_element_located((By.ID, 'cn.soulapp.android:id/tvConfirm')))
login.click()

# 5.授权页
view = wait.until(EC.presence_of_element_located((By.ID, "cn.soulapp.android:id/textView2")))
view.click()
auth()
view = wait.until(EC.presence_of_element_located((By.ID, "cn.soulapp.android:id/textView3")))
view.click()
auth()
driver.tap([(511, 931)])
auth()
driver.tap([(529, 1333)])
auth()

# 6.广场界面
square = wait.until(EC.presence_of_element_located((By.ID, "cn.soulapp.android:id/lotSquare")))
square.click()
auth()
driver.tap([(672, 149)])
time.sleep(20)
while True:
    driver.swipe(1000, 1400, 1000, 400, 300)
