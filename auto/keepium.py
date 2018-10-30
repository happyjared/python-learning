from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

server = 'http://localhost:4723/wd/hub'
desired_capabilities = {
    'platformName': 'Android',
    'deviceName': 'WAS_AL00',
    'appPackage': 'com.gotokeep.keep',
    'appActivity': 'com.gotokeep.keep.splash.SplashActivity'
}

driver = webdriver.Remote(server, desired_capabilities)
wait = WebDriverWait(driver, 10)


def get_permission():
    """允许APP获取的某些权限"""

    try:
        ask = wait.until(EC.presence_of_element_located((By.ID, 'com.android.packageinstaller:id/do_not_ask_checkbox')))
        ask.click()
        allow = wait.until(
            EC.presence_of_element_located((By.ID, 'com.android.packageinstaller:id/permission_allow_button')))
        allow.click()
    except:
        pass


# 允许两项授权
get_permission()
get_permission()

# 点击“立即使用”
welcome = wait.until(EC.presence_of_element_located((By.ID, 'com.gotokeep.keep:id/btn_bottom_in_video_welcome')))
welcome.click()

# 切换“密码登录”
driver.tap([(900, 110)])

# 输入“手机号”
phone = driver.find_element_by_accessibility_id('Phone Number In Login')
phone.send_keys('13988888888')

# 输入“密码”
password = driver.find_element_by_accessibility_id('Password In Login')
password.send_keys('123456')

# 点击“登录”
login = driver.find_element_by_id('com.gotokeep.keep:id/btn_action')
login.click()
