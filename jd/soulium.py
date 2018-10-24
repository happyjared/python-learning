from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

server = 'http://localhost:4723/wd/hub'
desired_caps = {
    "platformName": "Android",
    "deviceName": "WAS_AL00",
    "appPackage": "cn.soulapp.android",
    "appActivity": "cn.soulapp.android.ui.splash.SplashActivity"
}

driver = webdriver.Remote(server, desired_caps)
wait = WebDriverWait(driver, 10)

skip = wait.until(EC.presence_of_element_located((By.ID, 'cn.soulapp.android:id/llSkip')))
skip.click()

into = wait.until(EC.presence_of_element_located((By.ID, 'cn.soulapp.android:id/btn_newUser')))
into.click()

phone = wait.until(EC.presence_of_element_located((By.ID, 'cn.soulapp.android:id/etPhone')))
phone.send_keys('xxx')
confirm = wait.until(EC.presence_of_element_located((By.ID, 'cn.soulapp.android:id/rlConfirm')))
confirm.click()

password = wait.until(EC.presence_of_element_located((By.ID, 'cn.soulapp.android:id/etPwd')))
password.send_keys('xxx')
login = wait.until(EC.presence_of_element_located((By.ID, 'cn.soulapp.android:id/tvConfirm')))
login.click()
