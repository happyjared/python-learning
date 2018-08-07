# coding=UTF-8
import logging
import requests
from utils import pgs

log = logging.getLogger()


class Planet(object):
    db_name = 'planet'
    my_hash = None
    my_user_id = None
    headers = {
        'Authorization': 'token djM6xZStuyhZask3vssgz8xMtjrrIAGR7JsU6gSvwp8ClkkGrVQRI6K34_BnjyVriHZEopaxBT1'
                         'zwkt11eEO8bHnw-JAESD3Kv4E4IdfW7lg2GEP46eyRP_ccFLo6VKwDjRRA48B4hW9Mp7L5pRPaBwCpcIU'
                         'PKbN_oQLnVRIiI1ZEY9k'
    }

    def __init__(self):
        Planet.my_hash = self.__get_my_hash()
        Planet.my_user_id = self.__get_my_user_id()
        log.info('Init my hash : %s and my user id : %s', Planet.my_hash, Planet.my_user_id)

    @staticmethod
    def handler(sql, params):
        """ 处理数据

        :param sql:
        :param params:
        :return:
        """

        return pgs.handler(sql, params, db_name=Planet.db_name)

    @staticmethod
    def __get_my_user_id():
        """return my_user_id directly or request to return it (直接返回my_user_id或请求获得并返回)
        
        :return: my_user_id
        """

        if not Planet.my_user_id:
            api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/my-status'
            resp = requests.post(api, json={}, headers=Planet.headers).json()
            Planet.my_user_id = resp['notification_settings'][0]['user_id']
        return Planet.my_user_id

    @staticmethod
    def __get_my_hash():
        """return my_hash directly or request to return it (直接返回my_hash或请求获得并返回)

        :return: my_hash
        """

        if not Planet.my_hash:
            api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/my-dog-hash'
            resp = requests.post(api, json={}, headers=Planet.headers).json()
            Planet.my_hash = resp['uid_hash']
        return Planet.my_hash
