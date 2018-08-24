# coding=utf-8
import app
import logging
import requests
from utils import cron
import multiprocessing
from bs4 import BeautifulSoup
from httpbin import judgeProxy

redis = app.redis()
logging.basicConfig(level='INFO', filename='kuai.log',
                    format='%(asctime)s %(filename)s[%(lineno)d] %(name)s (%(levelname)s): %(message)s')
kuai_index = 'https://www.kuaidaili.com/free/{}/{}'


def crawlProxy(kuai_type):
    """爬取快代理数据"""

    for i in range(1, 100):
        url = kuai_index.format(kuai_type, str(i))
        resp = requests.get(url)
        if 200 == resp.status_code:
            logging.info('Start Crawl kuai: %s', url)
            bs = BeautifulSoup(resp.text, 'html.parser')
            for t_body in bs.find_all('tbody'):
                for tr in t_body.find_all('tr'):
                    td_list = tr.find_all('td')
                    ip, port, proxy_type = td_list[0].text, td_list[1].text, td_list[3].text
                    judgeProxy(ip, port, proxy_type.lower())


def cron_crawl_proxy():
    """定时爬取快代理数据"""

    logging.info("Cron crawl kuai proxy")
    # 对应高匿代理,普通代理,https代理和http代理
    crawl_list = ['inha', 'intr']
    multi_pool = multiprocessing.Pool(len(crawl_list))
    multi_pool.map(crawlProxy, crawl_list)
    multi_pool.close()


if __name__ == '__main__':
    # 定时爬取
    days, hours = '0-6', '0-23'
    cron.cron_blocking(job=cron_crawl_proxy, day_of_week=days, hour=hours, minute='0')
