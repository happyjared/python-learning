import csv
import os
from random import shuffle

base = "D:\\Data\\"


def load_account(file_name):
    """ 加载账号 """

    print("开始读取")
    data = csv.reader(open('{}{}.csv'.format(base, file_name), "r", encoding='utf-8'))
    # for row in data:
    #     username, password, role = row
    #     print("Username: {}  Password: {}  Role:  {}".format(username, password, role))
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
    reader = csv.reader(open('{}{}.csv'.format(base, "comment"), "r", encoding='utf-8'))
    for row in reader:
        data.append(row[0])
    shuffle(data)
    print("读取结束")
    return data


