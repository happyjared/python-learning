import time
from selenium import webdriver
from utils import auth
from selenium.webdriver.support.wait import WebDriverWait


# 简书
class JianShu(object):
    @staticmethod
    def post(main, timeout, self_timeout=3):
        # 1.跳转登陆
        login = 'https://www.blogs.com/sign_in'
        driver = webdriver.Chrome()
        driver.get(login)

        # 2.窗口最大化
        driver.maximize_window()

        # 3.使用QQ授权登录
        driver.find_element_by_xpath('/html/body/div[1]/div[2]/div/div/ul/li[3]/a/i').click()
        driver.close()
        auth.qq(driver, timeout)

        # 4.点击"写文章"
        write_blog = WebDriverWait(driver, timeout).until(lambda d: d.find_element_by_xpath('/html/body/nav/div/a[2]'))
        write_blog.click()
        driver.close()
        window_handles = driver.window_handles
        driver.switch_to.window(window_handles[-1])

        # 5.点击指定分类
        classify = WebDriverWait(driver, timeout).until(lambda d: d.find_elements_by_class_name('_3DM7w'))
        for c in classify:
            html = c.get_attribute('innerHTML')
            if main.category in html:
                c.click()
            else:
                # TODO 如果分类不存在，还可以直接新建分类
                pass

        # 6.点击'新建文章'
        time.sleep(self_timeout)
        new_article = WebDriverWait(driver, timeout).until(
            lambda d: d.find_element_by_xpath('//*[@id="root"]/div/div[2]/div[1]/div/div/div/div[1]/i'))
        new_article.click()
        article = WebDriverWait(driver, timeout).until(
            lambda d: d.find_element_by_xpath('//*[@id="root"]/div/div[2]/div[1]/div/div/div/ul/li[1]'))
        article.click()

        # 7.填写标题, 内容
        time.sleep(self_timeout)
        title = driver.find_element_by_class_name('_24i7u')
        title.clear()
        title.send_keys(main.title)
        content = driver.find_element_by_id('arthur-editor')
        content.clear()
        content.send_keys(main.content)

        # 8.保存草稿
        # driver.find_element_by_xpath('//*[@id="root"]/div/div[2]/div[2]/div/div/div/div/ul/li[8]/a').click()
        # 8.发布文章
        driver.find_element_by_xpath('//*[@id="root"]/div/div[2]/div[2]/div/div/div/div/ul/li[1]/a').click()
