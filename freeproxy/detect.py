import logging
import multiprocessing
from utils import cron
from freeproxy import app
from httpbin import checkProxy

redis = app.redis()


def handleProxy(key):
    """检测代理是否有效"""

    for member in redis.smembers(key):
        proxy = {key: member}
        if member != checkProxy(proxy, timeout=5):
            logging.warning("Handle Proxy %s is invalid", member)
            redis.srem(key, member)


def cron_handle_proxy():
    """定时检测Redis代理数据"""

    logging.info("Cron handle proxy")
    keys = redis.keys('http*')
    key_length = len(keys)
    if key_length == 1:
        handleProxy(keys[0])
    else:
        multi_pool = multiprocessing.Pool(key_length)
        multi_pool.map(handleProxy, keys)
        multi_pool.close()


if __name__ == '__main__':
    # 定时检测
    days, hours = '0-6', '0-23'
    cron.cron_blocking(job=cron_handle_proxy, day_of_week=days, hour=hours, minute='0')
    # cron_handle_proxy()
