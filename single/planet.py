import logger
import requests
from utils import pgs
from utils import rds

log = logger.setup_logging()


class Planet(object):
    # Postgres配置
    pgs_host = 'localhost'
    pgs_port = 15234
    pgs_db_name = 'planet'
    pgs_user = pgs_db_name
    pgs_pwd = pgs_db_name
    # Redis配置
    rds_host = pgs_host
    rds_port = 16937
    rds_db = 1
    rds_pwd = pgs_user
    my_hash = None
    my_user_id = None
    headers = {
        'Authorization': 'token djM6xZStuyhZask3vssgz8xMtjrrIAGR7JsU6gSvwp8ClkkGrVQRI6K34_BnjyVriHZEopaxBT1'
                         'zwkt11eEO8bHnw-JAESD3Kv4E4IdfW7lg2GEP46eyRP_ccFLo6VKwDjRRA48B4hW9Mp7L5pRPaBwCpcIU'
                         'PKbN_oQLnVRIiI1ZEY9k'
    }

    def __init__(self):
        self.postgres = pgs.Pgs(host=Planet.pgs_host, port=Planet.pgs_port, db_name=Planet.pgs_db_name,
                                user=Planet.pgs_user, password=Planet.pgs_pwd)
        self.redis = rds.Rds(host=Planet.rds_host, port=Planet.rds_port, db=Planet.rds_db,
                             password=Planet.rds_pwd).redis_cli
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
