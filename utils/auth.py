from selenium.webdriver.support.wait import WebDriverWait


# QQ授权登录, 使用前提是QQ客户端在线
def qq(driver, timeout):
    # 切换到最新打开的窗口
    window_handles = driver.window_handles
    driver.switch_to.window(window_handles[-1])

    print('Auth QQ: ', driver.title)

    # 切换iframe
    i_frame = WebDriverWait(driver, timeout).until(lambda d: d.find_element_by_id('ptlogin_iframe'))
    driver.switch_to.frame(i_frame)

    # 点击头像进行授权登录
    login = WebDriverWait(driver, timeout).until(lambda d: d.find_element_by_xpath('//*[@id="qlogin_list"]/a[1]'))
    login.click()
