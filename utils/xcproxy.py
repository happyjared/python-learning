# coding=utf-8
import rds
import cron
import logging
import requests
import multiprocessing
from bs4 import BeautifulSoup
from json import JSONDecodeError
from requests.exceptions import Timeout, ProxyError

redis = rds.Rds(host='localhost', port=12379, db=14, password='redis6379').redis_cli
logging.basicConfig(level='INFO', filename='xici.log',
                    format='%(asctime)s %(filename)s[%(lineno)d] %(name)s (%(levelname)s): %(message)s')
xc = 'http://www.xicidaili.com/{}/{}'
http_bin = 'http://httpbin.org/ip'
headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) '
                  'Chrome/67.0.3396.79 Safari/537.36'
}


def crawlProxy(xc_type):
    """爬取西刺代理数据"""

    for i in range(1, 100):
        url = xc.format(xc_type, str(i))
        resp = requests.get(url, headers=headers)
        if 200 == resp.status_code:
            logging.info('Start Crawl xici: %s', url)
            bs = BeautifulSoup(resp.text, 'html.parser')
            for tr in bs.find_all('tr'):
                if tr.find('td', class_='country'):
                    td_list = tr.find_all('td')
                    ip, port, proxy_type = td_list[1].text, td_list[2].text, td_list[5].text
                    judgeProxy(ip, port, proxy_type.lower())


def judgeProxy(ip, port, proxy_type):
    """判断代理是否有效"""

    schema = '{}://{}:{}'.format(proxy_type, ip, port)
    proxy = {proxy_type: schema}
    if ip == checkProxy(proxy):
        logging.info("Crawl Proxy %s success", schema)
        redis.sadd(proxy_type, schema)


def checkProxy(proxy, timeout=2):
    """检测代理的有效与否"""

    try:
        resp = requests.get(http_bin, proxies=proxy, timeout=timeout).json()
    except JSONDecodeError:
        logging.info('1.---> JSONDecodeError')
    except Timeout:
        logging.info('2.---> Timeout')
    except ProxyError:
        logging.info('3.---> ProxyError')
    except:
        logging.info('4.---> Error')
    else:
        return resp.get('origin')


def handleProxy(keys):
    """检测redis代理"""

    for key in keys:
        for member in redis.smembers(key):
            proxy = {key: member}
            if member != checkProxy(proxy, timeout=5):
                logging.warning("Handle Proxy %s is invalid", member)
                redis.srem(key, member)


def cron_crawl_proxy():
    """定时爬取西刺代理数据"""

    logging.info("Cron crawl proxy")
    # 对应高匿代理,普通代理,https代理和http代理
    crawl_list = ['nn', 'nt', 'wn', 'wt']
    multi_pool = multiprocessing.Pool(len(crawl_list))
    multi_pool.map(crawlProxy, crawl_list)
    multi_pool.close()


def cron_handle_proxy():
    """定时判断Redis代理数据"""

    logging.info("Cron handle proxy")
    # 对应http和https代理
    keys = {"http", "https"}
    multi_pool = multiprocessing.Pool(len(keys))
    multi_pool.map(handleProxy, keys)
    multi_pool.close()


if __name__ == '__main__':
    # cron_crawl_proxy()
    days, hours = '0-6', '0-23'
    # 定时爬取
    cron.cron_blocking(job=cron_crawl_proxy, day_of_week=days, hour=hours, minute='0')
    # 定时检测
    cron.cron_blocking(job=cron_handle_proxy, day_of_week=days, hour=hours, minute='30')
