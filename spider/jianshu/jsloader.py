import csv
import os
from random import shuffle

base = "D:\\Data\\"


class Account:

    def __init__(self, username, password, role, post_num, like=None) -> None:
        self.username, self.password = username, password
        self.role, self.post_num, self.like = int(role), int(post_num), like
        print("Username: {} Password: {} Role: {} Post: {} Like: {}".format(username, password, role, post_num, like))


def load_account(file_name):
    """ 加载账号 """

    print("开始读取")
    data = list()
    with open('{}{}.csv'.format(base, file_name), "r", encoding='utf-8') as file:
        reader_data = csv.reader(file)
        for row in reader_data:
            username, password, role, post_num = row
            data.append(Account(username=username, password=password, role=role, post_num=post_num))
    print("读取结束")
    return data


def load_article(role):
    """ 加载文章 """

    print("开始读取")
    path = "{}{}".format(base, role)
    file_list = os.listdir(path)
    print("文件夹路径【{}】下共有文章{}篇".format(path, len(file_list)))
    shuffle(file_list)
    data = dict()
    for file_name in file_list:
        article_name = file_name.replace(".md", "")
        with open(path + "\\" + file_name, "r", encoding='utf-8') as file:
            article_content = file.read()
        data.setdefault(article_name, article_content)
    print("读取结束".format(role))
    return data


def load_comment():
    """ 加载评论 """

    print("开始读取")
    data = list()
    with open('{}{}.csv'.format(base, "comment"), "r", encoding='utf-8') as file:
        reader_data = csv.reader(file)
        for row in reader_data:
            data.append(row[0])
    shuffle(data)
    print("读取结束")
    return data
