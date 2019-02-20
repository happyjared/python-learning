import logging
import requests
from utils import pgs
from utils import rds
from logger import log


class Planet(object):
    log.Logger()
    # Postgres配置
    host = 'localhost'
    pgs_port = 12432
    pgs_db_name = 'planet'
    pgs_user = pgs_db_name
    pgs_pwd = pgs_db_name
    postgres = pgs.Pgs(host=host, port=pgs_port, db_name=pgs_db_name, user=pgs_user, password=pgs_pwd, singleton=False)
    # Redis配置
    rds_port = 12379
    rds_pwd = 'redis6379'
    redis = rds.Rds(host=host, port=rds_port, password=rds_pwd).redis_cli
    my_hash = None
    my_user_id = None
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36",
    }

    def __init__(self):
        self.redis = Planet.redis
        self.postgres = Planet.postgres
        self.__get_my_info()
        logging.info('Init my hash : %s and my user id : %s', Planet.my_hash, Planet.my_user_id)

    def handler(self, sql, params):
        """ 处理数据

        :param sql:
        :param params:
        :return:
        """

        return self.postgres.handler(sql, params)

    def __get_my_info(self):
        """获取个人info"""

        key = 'planet:my:token'
        Planet.headers['Authorization'] = "token " + self.redis.get(key)
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/my-dog-hash'
        resp = requests.post(api, json={}, headers=Planet.headers).json()
        Planet.my_hash = resp['uid_hash']
        Planet.my_user_id = resp['user_id']
