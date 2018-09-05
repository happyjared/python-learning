# coding=utf-8
import logging
import requests
from utils import cron
import multiprocessing
from freeproxy import app
from bs4 import BeautifulSoup
from httpbin import judgeProxy

redis = app.redis()
logging.basicConfig(level='INFO', filename='xc.log',
                    format='%(asctime)s %(filename)s[%(lineno)d] %(name)s (%(levelname)s): %(message)s')
xc_index = 'http://www.xicidaili.com/{}/{}'
headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) '
                  'Chrome/67.0.3396.79 Safari/537.36'
}


def crawlProxy(xc_type):
    """爬取西刺代理数据"""

    for i in range(1, 100):
        url = xc_index.format(xc_type, str(i))
        resp = requests.get(url, headers=headers)
        if 200 == resp.status_code:
            logging.info('Start Crawl xici: %s', url)
            bs = BeautifulSoup(resp.text, 'html.parser')
            for tr in bs.find_all('tr'):
                if tr.find('td', class_='country'):
                    td_list = tr.find_all('td')
                    ip, port, proxy_type = td_list[1].text, td_list[2].text, td_list[5].text
                    judgeProxy(ip, port, proxy_type.lower())


def cron_crawl_proxy():
    """定时爬取西刺代理数据"""

    logging.info("Cron crawl xici proxy")
    # 对应高匿代理,普通代理,https代理和http代理
    crawl_list = ['nn', 'nt', 'wn', 'wt']
    multi_pool = multiprocessing.Pool(len(crawl_list))
    multi_pool.map(crawlProxy, crawl_list)
    multi_pool.close()


if __name__ == '__main__':
    # 定时爬取
    days, hours = '0-6', '0-23'
    cron.cron_blocking(job=cron_crawl_proxy, day_of_week=days, hour=hours, minute='30')
    # cron_crawl_proxy()