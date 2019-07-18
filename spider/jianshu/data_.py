import csv


def load_data():
    """ 加载数据 """

    print("开始读取")
    data = csv.reader(open('D:\\data.csv', encoding='utf-8'))
    for row in data:
        username, password, role = row
        print("Username: {}  Password: {}  Role:  {}".format(username, password, role))
    print("读取结束")
    return data
