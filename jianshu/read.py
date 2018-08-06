import math
import time
import numpy
import requests
import multiprocessing
from bs4 import BeautifulSoup


# 简书用户的文章阅读总量统计
class ReadCount(object):

    def __init__(self, uid):
        self.headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) '
                          'Chrome/66.0.3359.139 Safari/537.36'
        }
        self.uid = uid  # uid
        self.nickname = ''  # 昵称
        self.avatar = ''  # 头像
        self.articles = 0  # 总发表文章数
        self.total_reading = 0  # 文章总阅读数
        self.watch = 0  # 关注人数
        self.fans = 0  # 粉丝人数
        self.words = 0  # 写作字数
        self.likes = 0  # 收货喜欢数
        self.time = 0  # 查询总耗时
        self.exit = True  # 用户是否存在的标志
        '''
        以下是可新增的统计部分
        '''
        self.first_post = ''  # 第一次发表文章的时间
        self.last_post = ''  # 最后一次发表文章的时间
        self.year_post = 0  # 平均每年发表文章数
        self.month_post = 0  # 平均每月发表文章数
        self.max_read_count = 0  # 最高阅读量
        self.max_read_url = ''  # 最高阅读量文章
        self.max_reward_count = 0  # 最高打赏数
        self.max_reward_url = ''  # 最高打赏数文章
        self.max_like_count = 0  # 最高喜欢量
        self.max_like_url = ''  # 最高喜欢量文章
        self.max_comment_count = 0  # 最高评论数
        self.max_comment_url = ''  # 最高评论数文章
        self.reward_count = 0  # 打赏总笔数
        self.reward_avg = 0  # 平均每篇文章打赏数

    def count(self):
        """判断用户是否存在。存在则抓取并统计数据，否则修改exit标志

        :return:
        """

        start = time.time()
        url = 'https://www.jianshu.com/u/' + self.uid
        # print(url)
        resp = requests.get(url, headers=self.headers)
        if resp.status_code == 200:
            bs = BeautifulSoup(resp.content, 'html.parser', from_encoding='UTF-8')

            avatar = bs.find(class_='avatar')  # 头像
            self.avatar = 'https:' + avatar.img['src']

            nickname = bs.find(class_='name')  # 昵称
            self.nickname = nickname.text

            meta_block = bs.find_all(class_='meta-block')
            self.watch = int(meta_block[0].a.p.text)  # 关注数
            self.fans = int(meta_block[1].a.p.text)  # 粉丝数
            self.articles = int(meta_block[2].a.p.text)  # 总发表文章数
            self.words = int(meta_block[3].p.text)  # 写作字数
            self.likes = int(meta_block[4].p.text)  # 收获喜欢数
            if self.articles != 0:
                # print(self.articles)
                meta = bs.find_all(class_='meta')
                # 每页展示文章数
                page_articles = len(meta)
                # print(page_articles)
                # 文章展示总页数
                pages = int(math.ceil(self.articles / page_articles)) + 1
                # 用多线程统计
                cpu_count = multiprocessing.cpu_count()
                # print(cpu_count)
                pool = multiprocessing.Pool(cpu_count)
                # 从第一页开始
                page = range(1, pages)
                # 包含每页阅读量的列表
                page_reading_list = pool.map(self.page_count, page)
                # print(page_reading_list)
                self.total_reading = numpy.sum(page_reading_list)
                # print('用户：%s 总发表文章数为：%d , 文章总阅读量为: %s' % (input_uid, self.articles, self.total_reading))
        else:
            self.exit = False
            # print('用户：%s 不存在' % input_uid)
        end = time.time()
        self.time = int(end - start)

    def page_count(self, page):
        """每页的阅读量统计

        :param page:
        :return:
        """

        url = 'https://www.jianshu.com/u/' + self.uid + '?page=' + str(page)
        # print(url)
        resp = requests.get(url, headers=self.headers)
        bs = BeautifulSoup(resp.content, 'html.parser', from_encoding='UTF-8')
        divs = bs.find_all(class_='meta')
        page_reading = 0
        for div in divs:
            page_reading += int(div.a.text)
        return page_reading
