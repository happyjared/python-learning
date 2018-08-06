from selenium import webdriver
from utils import auth
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.common.action_chains import ActionChains


# 开源中国
class OsChina(object):
    @staticmethod
    def post(main, timeout):
        # 1.账号密码
        account = 'xxx'
        password = 'xxx'

        # 2.跳转登陆
        login = 'https://www.oschina.net/home/login'
        driver = webdriver.Chrome()
        driver.get(login)

        # 3.窗口最大化
        driver.maximize_window()

        # 4.使用QQ授权登录
        driver.find_element_by_xpath('/html/body/section/div/div[2]/div[2]/div/div[2]/a[4]').click()
        auth.qq(driver, timeout)

        # 4.使用账号密码登陆
        # driver.find_element_by_id('userMail').send_keys(account)
        # driver.find_element_by_id('userPassword').send_keys(password)
        # driver.find_element_by_xpath('//*[@id="account_login"]/form/div/div[5]/button').click()

        # 5.移到"我的空间", 点击"我的博客"
        my_space = WebDriverWait(driver, timeout).until(lambda d: d.find_element_by_xpath('//*[@id="MySpace"]'))
        ActionChains(driver).move_to_element(my_space).perform()
        driver.find_element_by_xpath('/html/body/header/div/div[2]/div/div[2]/div/ul/li[4]/a').click()

        # 6.点击"写博客"
        write_blog = WebDriverWait(driver, timeout).until(
            lambda d: d.find_element_by_xpath('/html/body/div/div/div/div/div[1]/div[1]/div[4]/a'))
        write_blog.click()

        # 7.选择自定义分类, 系统分类
        classify = WebDriverWait(driver, timeout).until(lambda d: d.find_elements_by_class_name('select-opt'))
        for c in classify:
            html = c.get_attribute('innerHTML')
            if main.category in html:
                if 'span' in html:
                    # 自定义分类
                    data_value = c.get_attribute('data-value')
                    js = 'document.getElementById("self_sort").value=' + data_value
                    driver.execute_script(js)
            else:
                if main.osChina_sys_category == html:
                    # 系统分类
                    data_value = c.get_attribute('data-value')
                    js = 'document.getElementById("sys_sort").value=' + data_value
                    driver.execute_script(js)

        # 8.填写标题, 内容和标签
        title = driver.find_element_by_xpath('//*[@id="title"]')
        title.clear()
        title.send_keys(main.title)
        content = driver.find_element_by_id('mdeditor')
        content.clear()
        content.send_keys(main.content)
        tags = driver.find_element_by_xpath('//*[@id="blog-form"]/div[2]/div/div[3]/div[1]/div[2]/div[2]/input')
        tags.clear()
        tags.send_keys(main.tags)

        # 9.保存草稿
        driver.find_element_by_xpath('//*[@id="blog-form"]/div[3]/div/button[1]').click()
        # 9.发布文章
        # driver.find_element_by_xpath('//*[@id="blog-form"]/div[3]/div/button[2]').click()
