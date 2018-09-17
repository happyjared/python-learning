import logging
import random
import time
from datetime import datetime
from threading import Thread

import requests

import planet_sql
from planet import Planet
from planet_spider import PlanetSpider
from utils import pgs, cron, robot, mpwx


class PlanetRobot:
    def __init__(self, spider):
        self.spider = spider

    def user_dynamic(self):
        """获得全局的动态列表
        
        """

        sleep_time = 0
        data = {"list": 'explore', "offset": 0, "pagesize": 20}
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/tlmsg/list'

        logging.info('Start to get users dynamic')
        while True:
            resp = self.handle_request(api, data)
            if resp:
                messages = resp['messages']
                for index, message in enumerate(messages):
                    msg_user_id = message['user_id']  # 用户id
                    if str(msg_user_id) == Planet.my_user_id:
                        continue
                    msg_id = message['id']  # 消息id
                    comment = message['comment']  # 动态内容
                    disable_comment = message['disable_comment']  # 是否关闭了评论
                    tl_hash = resp['tl_hashes'][index]  # 动态hash值
                    msg_type = message['msg_type']  # 消息类型
                    if msg_type == 'Text':
                        comment = message['message']['text']['Text']

                    user = resp['users'][index]
                    user_hash = resp['uid_hashes'][index]
                    key = 'planet:u:{0}:m:{1}:comment'.format(msg_user_id, msg_id)
                    if not self.spider.redis.exists(key):
                        # 获取用户个人、相册、动态等信息
                        self.spider.parse(user, user_hash)
                        # 给当前动态点赞
                        self.__robot_vote(msg_id, tl_hash)

                    if not disable_comment:
                        recent_comment = resp['recent_comments'][index]
                        # 无评论或者评论里没有机器人的回复
                        if not recent_comment:
                            comment_msg = robot.call_text_v1(comment, msg_user_id)
                            self.__robot_comment(msg_id, comment_msg, tl_hash, msg_user_id)

                logging.info('Dynamic to sleep , sleep time is %d', sleep_time)
                time.sleep(sleep_time)
                sleep_time = random.randint(300, 600)
                logging.info('Dynamic end sleep , next sleep time is %d', sleep_time)

    def reply_robot(self):
        """回复机器人的评论

        """

        sleep_time = 0
        data = {"offset": 0}
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/v2/tlmsg/comments/my-received'
        logging.info('Start to get reply robot')
        while True:
            resp = self.handle_request(api, data)
            if resp:
                now = datetime.now()
                comments = resp['comments']
                for index, comment in enumerate(comments):
                    comment_id = comment['id']  # 评论id
                    user_id = comment['user_id']  # 评论用户id
                    msg_id = comment['tl_id']  # 动态id

                    key = 'planet:u:{0}:m:{1}:comment'.format(user_id, msg_id)
                    is_member = self.spider.redis.sismember(key, comment_id)
                    if not is_member:
                        self.spider.redis.sadd(key, comment_id)
                        comment_time = comment['ctime']  # 回复时间
                        text = comment['message']['text']['Text']  # 回复内容

                        effect_count = self.spider.handler(planet_sql.add_user_comment(),
                                                           (comment_id, user_id, msg_id, text, comment_time, now))
                        if effect_count != 0:
                            comment_msg = robot.call_text_v1(text, user_id)
                            tl_hash = resp['tl_hashes'][index]
                            self.__robot_comment(msg_id, comment_msg, tl_hash, user_id)

                logging.info('Reply robot to sleep , sleep time is %d', sleep_time)
                time.sleep(sleep_time)
                sleep_time = random.randint(90, 180)
                logging.info('Reply robot end sleep , next sleep time is %d', sleep_time)

    def __robot_comment(self, msg_id, comment_msg, tl_hash, to_user_id):
        """机器人评论动态或回复评论
        
        :param msg_id: 动态id
        :param comment_msg: 内容
        :param tl_hash: 动态hash
        :param to_user_id: 目标用户id
        """

        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/tlmsg/comment/add'
        data = {"tl_id": msg_id, "message": comment_msg, "hash": tl_hash, "to_user_id": to_user_id}
        resp = requests.post(api, json=data, headers=Planet.headers).json()

        comment = resp.get('comment')
        if comment:
            comment_id = comment['id']  # 评论id
            comment_time = comment['ctime']  # 评论时间

            key = 'planet:u:{0}:m:{1}:comment'.format(to_user_id, msg_id)
            self.spider.redis.sadd(key, comment_id)

            self.spider.handler(planet_sql.add_user_comment(),
                                (comment_id, Planet.my_user_id, msg_id, comment_msg, comment_time, datetime.now()))

    @staticmethod
    def __robot_vote(msg_id, tl_hash):
        """机器人进行点赞
        
        :return: 
        """
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/tlmsg/vote'
        data = {"tl_id": msg_id, "hash": tl_hash}
        resp = requests.post(api, json=data, headers=Planet.headers).json()
        voted = resp.get('Voted')
        logging.debug('Robot vote result %d', voted)

    @staticmethod
    def robot_dynamic():
        """机器人发表动态
        
        :return: 
        """

        scrapy = 'scrapy'
        postgres = pgs.Pgs(host='localhost', port=12432, db_name=scrapy, user=scrapy, password=scrapy)
        rows = postgres.fetch_all(planet_sql.find_random_music(), ())
        row = rows[0]
        music_name = row[1]
        music_lyric = row[2]
        comment = '{0}\n{1}'.format(music_name, music_lyric)

        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/tlmsg/post'
        data = {"comment": comment, "photo_ids": [], "sync_photo_to_album": False}
        resp = requests.post(api, json=data, headers=Planet.headers).json()
        msg_id = resp.get('id')
        logging.info('Robot dynamic msg_id %d', msg_id)
        if msg_id:
            table_id = row[0]
            postgres.handler(planet_sql.update_music_count(), (table_id,))
        postgres.close()
        # PlanetRobot.refresh_token()

    @staticmethod
    def refresh_token():
        """刷新Token"""

        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/push/access_token'
        resp = requests.post(api, json={}, headers=Planet.headers).json()
        logging.info('access_token: %s ', resp.get('access_token'))

    def handle_request(self, api, data):
        """统一处理请求"""

        resp = requests.post(api, json=data, headers=Planet.headers)

        result = resp.json()
        errcode = result.get('errcode')
        if errcode:
            logging.error('>>> Single Unauthenticated')
            key = 'planet:my:token'
            Planet.headers['Authorization'] = self.spider.redis.get(key)
            mpwx.sendTemplateMsg()
            time.sleep(300)
        else:
            return resp


# 程序入口
if __name__ == '__main__':
    ps = PlanetSpider()
    pr = PlanetRobot(ps)

    # cron.cron_background(PlanetRobot.robot_dynamic, day_of_week='0-6', hour='0,6,12,18')
    t1 = Thread(target=pr.user_dynamic, name='Thread-1')
    t2 = Thread(target=pr.reply_robot, name='Thread-2')

    t1.start()
    t2.start()
