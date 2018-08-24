# coding=utf-8
import rds
import cron
import logging
import requests
import multiprocessing
from bs4 import BeautifulSoup
from json import JSONDecodeError
from requests.exceptions import Timeout, ProxyError

logging.basicConfig(level='INFO', filename='xici.log',
                    format='%(asctime)s %(filename)s[%(lineno)d] %(name)s (%(levelname)s): %(message)s')


# 西刺代理
class XiCi(object):

    def __init__(self):
        self.xc = 'http://www.xicidaili.com/{}/{}'
        self.bin = 'http://httpbin.org/ip'
        self.headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36'
        }
        self.redis = rds.Rds(host='localhost', port=12379, db=14, password='redis6379').redis_cli

    def crawlProxy(self, xc):
        """爬取西刺代理数据"""

        for i in range(1, 100):
            url = self.xc.format(xc, str(i))
            resp = requests.get(url, headers=self.headers)
            if 200 == resp.status_code:
                logging.info('Start Crawl xici: %s', url)
                bs = BeautifulSoup(resp.text, 'html.parser')
                for tr in bs.find_all('tr'):
                    if tr.find('td', class_='country'):
                        td_list = tr.find_all('td')
                        ip, port, proxy_type = td_list[1].text, td_list[2].text, td_list[5].text
                        self.judgeProxy(ip, port, proxy_type.lower())

    def judgeProxy(self, ip, port, proxy_type):
        """判断代理是否有效"""

        schema = '{}://{}:{}'.format(proxy_type, ip, port)
        proxy = {proxy_type: schema}
        if ip == self.checkProxy(proxy):
            logging.warning("Crawl Proxy %s success", schema)
            self.redis.sadd(proxy_type, schema)

    def checkProxy(self, proxy):
        """检测代理的有效与否"""

        try:
            resp = requests.get(self.bin, proxies=proxy, timeout=1).json()
        except JSONDecodeError:
            logging.debug('1.---> JSONDecodeError')
        except Timeout:
            logging.debug('2.---> Timeout')
        except ProxyError:
            logging.debug('3.---> ProxyError')
        except:
            logging.debug('4.---> Error')
        else:
            return resp.get('origin')

    def handleProxy(self, keys):
        """检测redis代理"""

        for key in keys:
            for member in self.redis.smembers(key):
                proxy = {key: member}
                if member != self.checkProxy(proxy):
                    logging.warning("Handle Proxy %s is invalid", member)
                    self.redis.srem(key, member)

    def cron_crawl_proxy(self):
        """定时爬取西刺代理数据"""

        logging.info("Cron crawl proxy")
        # 对应高匿代理,普通代理,https代理和http代理
        crawl_list = ['nn', 'nt', 'wn', 'wt']
        multi_pool = multiprocessing.Pool(len(crawl_list))
        multi_pool.map(self.crawlProxy, crawl_list)

    def cron_handle_proxy(self):
        """定时判断Redis代理数据"""

        logging.info("Cron handle proxy")
        # 对应http和https代理
        keys = {"http", "https"}
        multi_pool = multiprocessing.Pool(len(keys))
        multi_pool.map(self.handleProxy, keys)


if __name__ == '__main__':
    spider = XiCi()
    # 定时爬取
    cron.cron_blocking(job=spider.cron_crawl_proxy, day_of_week='0-6', hour='0-23', minute='0,15,30,45')
    # 定时检测
    cron.cron_blocking(job=spider.cron_handle_proxy, day_of_week='0-6', hour='0-23', minute='5,15,25,35,45,55')
