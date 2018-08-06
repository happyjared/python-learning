import time
from utils import auth
from selenium import webdriver
from selenium.webdriver.support.ui import Select
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.common.action_chains import ActionChains


# CSDN
class CSDN(object):
    @staticmethod
    def post(main, timeout, self_timeout=5):
        # 1.账号密码
        account = 'xxx'
        password = 'xxx'

        # 2.跳转登陆
        login = 'https://passport.csdn.net/account/login'
        driver = webdriver.Chrome()
        driver.get(login)

        # 3.窗口最大化
        driver.maximize_window()

        # 4.使用账号密码登陆
        # login_by_account = WebDriverWait(driver, timeout).until(
        #     lambda d: d.find_element_by_xpath('/html/body/div[3]/div/div/div[2]/div/h3/a'))
        # login_by_account.click()
        # time.sleep(self_timeout)
        # driver.find_element_by_id('username').send_keys(account)
        # driver.find_element_by_id('password').send_keys(password)
        # driver.find_element_by_xpath('//*[@id="fm1"]/input[8]').click()

        # 4.使用QQ授权登录
        driver.find_element_by_id('qqAuthorizationUrl').click()
        driver.close()
        auth.qq(driver, timeout)

        # 5.点击"写博客"
        write_blog = WebDriverWait(driver, timeout).until(
            lambda d: d.find_element_by_xpath('/html/body/div[1]/div/div/ul/li[3]/a'))
        write_blog.click()
        driver.close()
        window_handles = driver.window_handles
        driver.switch_to.window(window_handles[-1])

        # 6.点击"开始写作"
        start = WebDriverWait(driver, timeout).until(
            lambda d: d.find_element_by_xpath('//*[@id="btnStart"]'))
        start.click()

        # 7.填写标题, 内容
        time.sleep(timeout)
        title = driver.find_element_by_xpath('//*[@id="txtTitle"]')
        title.clear()
        title.send_keys(main.title)
        # PS:下面这行代码很重要，卡了好久才解决┭┮﹏┭┮，不信可以试试注释掉这句
        ActionChains(driver).click(title).perform()
        content = driver.find_element_by_xpath('//*[@id="wmd-input"]/div[1]')
        content.clear()
        content.send_keys(main.content)

        # 8.保存草稿
        # driver.find_element_by_xpath('//*[@id="editorBox"]/div[2]/div/button[2]').click()
        # 8.发布文章
        driver.find_element_by_xpath('//*[@id="editorBox"]/div[2]/div/button[1]').click()

        # 9.若第8步选择"发布文章", 往下需依次填写标签，个人分类，文章类型，博客分类
        tags = main.tags.split('，')
        add_tag = WebDriverWait(driver, timeout).until(lambda d: d.find_element_by_id('addTag'))
        for i, tag in enumerate(tags):
            add_tag.click()
            tag_input = WebDriverWait(driver, timeout).until(
                lambda d: d.find_element_by_xpath('//*[@id="tagBox"]/div[' + str(i + 1) + ']/span'))
            tag_input.send_keys(tag)
        classify = driver.find_elements_by_class_name('form-check-label')
        for c in classify:
            html = c.get_attribute('innerHTML')
            if main.category in html:
                c.click()
        select = Select(driver.find_element_by_id('selType'))
        select.select_by_visible_text(main.csdn_article_category)
        select = Select(driver.find_element_by_id('radChl'))
        select.select_by_visible_text(main.csdn_blog_category)

        # 10.保存草稿
        # driver.find_element_by_xpath('//*[@id="meditor_box"]/div[3]/div/div[6]/input[2]').click()
        # 10.发布文章
        driver.find_element_by_xpath('//*[@id="meditor_box"]/div[3]/div/div[6]/input[3]').click()
        time.sleep(self_timeout)
