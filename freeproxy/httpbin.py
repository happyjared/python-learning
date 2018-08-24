import app
import logging
import requests
from json import JSONDecodeError
from requests.exceptions import Timeout, ProxyError

redis = app.redis()
http_bin = 'http://httpbin.org/ip'


def judgeProxy(ip, port, proxy_type):
    """判断代理是否有效"""

    schema = '{}://{}:{}'.format(proxy_type, ip, port)
    proxy = {proxy_type: schema}
    if ip == checkProxy(proxy):
        logging.info("Crawl Proxy %s success", schema)
        redis.sadd(proxy_type, schema)


def checkProxy(proxy, timeout=3):
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
