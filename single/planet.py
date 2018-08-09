import os
import yaml
import logging
import requests
import logging.config
from utils import pgs
from utils import rds


def setup_logging():
    """日志相关配置

    """

    path = 'logs'
    if not os.path.exists(path):
        os.mkdir(path)

    path = '../config/logging.yml'
    if os.path.exists(path):
        with open(path, 'r', encoding='utf-8') as f:
            config = yaml.load(f)
            logging.config.dictConfig(config)
    else:
        logging.basicConfig(level='INFO', filename='info.log',
                            format='%(asctime)s %(filename)s[%(lineno)d] %(name)s (%(levelname)s): %(message)s')


log = logging.getLogger()


class Planet(object):
    # Postgres配置
    pgs_port = 12432
    pgs_db_name = 'planet'
    pgs_user = pgs_db_name
    pgs_pwd = pgs_db_name
    # Redis配置
    rds_port = 12379
    rds_pwd = 'redis6379'
    my_hash = None
    my_user_id = None
    headers = {
        'Authorization': 'token djM6wsX7KA2Kfa6xRP96i5HYpDrz9NF8uRndy_rkCY-F-O1FBRjnzmnHYrsJAIvk5Ooh4Flb'
                         'scMsSSFsNRTaah9-V6J_jaMh5QBDkVXlLSLLG9W3vj8Xf3zO8_2186qHOpG9dXEGYeSH3TQO4J4s2R'
                         '7ChFQMvKA6pMmeKcEUtIWi8lhb'
    }

    def __init__(self):
        self.postgres = pgs.Pgs(port=Planet.pgs_port, db_name=Planet.pgs_db_name,
                                user=Planet.pgs_user, password=Planet.pgs_pwd)
        self.redis = rds.Rds(port=Planet.rds_port, password=Planet.rds_pwd).redis_cli
        Planet.my_hash = self.__get_my_hash()
        Planet.my_user_id = self.__get_my_user_id()
        log.info('Init my hash : %s and my user id : %s', Planet.my_hash, Planet.my_user_id)

    def handler(self, sql, params):
        """ 处理数据

        :param sql:
        :param params:
        :return:
        """

        return self.postgres.handler(sql, params)

    def __get_my_user_id(self):
        """return my_user_id directly or request to return it (直接返回my_user_id或请求获得并返回)

        :return: my_user_id
        """

        if not Planet.my_user_id:
            key = 'planet:my:uid'
            Planet.my_user_id = self.redis.get(key)
            if not Planet.my_user_id:
                api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/my-status'
                resp = requests.post(api, json={}, headers=Planet.headers).json()
                Planet.my_user_id = resp['notification_settings'][0]['user_id']
                self.redis.set(key, Planet.my_user_id)
        return Planet.my_user_id

    def __get_my_hash(self):
        """return my_hash directly or request to return it (直接返回my_hash或请求获得并返回)

        :return: my_hash
        """

        if not Planet.my_hash:
            key = 'planet:my:hash'
            Planet.my_user_id = self.redis.get(key)
            if not Planet.my_user_id:
                api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/my-dog-hash'
                resp = requests.post(api, json={}, headers=Planet.headers).json()
                Planet.my_hash = resp['uid_hash']
                self.redis.set(key, Planet.my_hash)
        return Planet.my_hash
