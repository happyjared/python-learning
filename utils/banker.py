import time
import requests


def get_gold_price():
    """获取实时黄金价格"""

    url = 'https://www.g-banker.com/price/query'
    json = {"queryFlag": 3}
    resp = requests.post(url, json=json).json()
    if resp.get('success') == 'true':
        data = resp.get('data')
        realtime_price = data.get('realtime_price')
        price = realtime_price / 100
        print("{}  {}  {}".format(realtime_price, price, type(price)))
        return price


if __name__ == '__main__':
    while True:
        get_gold_price()
        time.sleep(10)
