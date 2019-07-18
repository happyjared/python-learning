import csv
import os

base = "D:\\Data\\"


def load_data():
    """ 加载数据 """

    print("开始读取")
    data = csv.reader(open('{}data.csv'.format(base), encoding='utf-8'))
    for row in data:
        username, password, role = row
        print("Username: {}  Password: {}  Role:  {}".format(username, password, role))
    print("读取结束")
    return data


def load_article(role):
    """ 加载文章 """

    print("开始读取")
    path = "{}{}".format(base, role)
    file_list = os.listdir(path)
    print("文件夹路径【{}】下共有文章{}篇".format(path, len(file_list)))
    data = dict()
    for file_name in file_list:
        article_name = file_name.replace(".md", "")
        with open(path + "\\" + file_name, "r", encoding='utf-8') as file:
            article_content = file.read()
        data.setdefault(article_name, article_content)
    print("读取结束".format(role))
    return data


