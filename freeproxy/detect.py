import app
import logging
import multiprocessing
from utils import cron
from httpbin import checkProxy

redis = app.redis()


def handleProxy(keys):
    """检测redis代理"""

    for key in keys:
        for member in redis.smembers(key):
            proxy = {key: member}
            if member != checkProxy(proxy, timeout=5):
                logging.warning("Handle Proxy %s is invalid", member)
                redis.srem(key, member)


def cron_handle_proxy():
    """定时判断Redis代理数据"""

    logging.info("Cron handle proxy")
    # 对应http和https代理
    keys = {"http", "https"}
    multi_pool = multiprocessing.Pool(len(keys))
    multi_pool.map(handleProxy, keys)
    multi_pool.close()


if __name__ == '__main__':
    # 定时检测
    days, hours = '0-6', '0-23'
    cron.cron_blocking(job=cron_handle_proxy, day_of_week=days, hour=hours, minute='30')
