# coding=UTF-8
import time
import random
import logging
import requests
import planet_sql
from planet import Planet
from common_util import pg
from threading import Thread
from common_util import robot
from datetime import datetime
from planet_spider import PlanetSpider


# 程序入口
def run():
    ps = PlanetSpider()
    pr = PlanetRobot(ps)

    t1 = Thread(target=pr.dynamic, name='Thread-pr.dynamic')
    t1.start()

    t2 = Thread(target=pr.reply_robot, name='Thread-pr.reply_robot')
    t2.start()


log = logging.getLogger()


class PlanetRobot:
    def __init__(self, spider):
        self.spider = spider

    def dynamic(self):
        """获得全局的动态列表
        
        """

        sleep_time = random.randint(75, 105)
        data = {"list": 'explore', "offset": 0, "pagesize": 20}
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/tlmsg/list'

        log.info('Start to get users dynamic')
        while True:
            resp = requests.post(api, json=data, headers=Planet.headers).json()

            messages = resp['messages']
            for index, message in enumerate(messages):
                msg_id = message['id']  # 消息id
                msg_user_id = message['user_id']  # 用户id
                comment = message['comment']  # 动态内容
                disable_comment = message['disable_comment']  # 是否关闭了评论
                tl_hash = resp['tl_hashes'][index]  # 动态hash值
                msg_type = message['msg_type']  # 消息类型
                if msg_type == 'Text':
                    comment = message['message']['text']['Text']

                user = resp['users'][index]
                user_hash = resp['uid_hashes'][index]
                self.spider.parse(user, user_hash)

                if not disable_comment:
                    recent_comment = resp['recent_comments'][index]
                    if not recent_comment or (recent_comment[0] != Planet.my_user_id):
                        # 未评论过或最新的评论非机器人
                        comment_msg = robot.call_text(comment, msg_user_id)
                        self.robot_comment(msg_id, comment_msg, tl_hash, msg_user_id)

            log.info('Get users dynamic Going to sleep , sleep time is %d', sleep_time)
            time.sleep(sleep_time)
            sleep_time = random.randint(75, 105)
            log.info('Get users dynamic End sleep , next sleep time is %d', sleep_time)

    def reply_robot(self):
        """回复机器人的评论

        """

        data = {"offset": 0}
        sleep_time = random.randint(45, 75)
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/v2/tlmsg/comments/my-received'
        while True:
            resp = requests.post(api, json=data, headers=Planet.headers).json()

            now = datetime.now()
            comments = resp['comments']
            for index, comment in enumerate(comments):
                comment_id = comment['id']  # 评论id
                user_id = comment['user_id']  # 评论用户id
                msg_id = comment['tl_id']  # 动态id
                comment_time = comment['ctime']  # 回复时间
                text = comment['message']['text']['Text']  # 回复内容

                effect_count = pg.handler(planet_sql.add_user_comment(),
                                          (comment_id, user_id, msg_id, text, comment_time, now))
                if effect_count != 0:
                    comment_msg = robot.call_text(text, user_id)
                    tl_hash = resp['tl_hashes'][index]
                    self.robot_comment(msg_id, comment_msg, tl_hash, user_id)

            time.sleep(sleep_time)
            sleep_time = random.randint(45, 75)

    @staticmethod
    def robot_comment(msg_id, comment_msg, tl_hash, to_user_id):
        """机器人评论动态或回复评论
        
        :param msg_id: 动态id
        :param comment_msg: 内容
        :param tl_hash: 动态hash
        :param to_user_id: 目标用户id
        """

        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/tlmsg/comment/add'
        data = {"tl_id": msg_id, "message": comment_msg, "hash": tl_hash, "to_user_id": to_user_id}
        resp = requests.post(api, json=data, headers=Planet.headers).json()

        comment = resp['comment']
        comment_id = comment['id']  # 评论id
        comment_time = comment['ctime']  # 评论时间

        pg.handler(planet_sql.add_user_comment(),
                   (comment_id, Planet.my_user_id, msg_id, comment_msg, comment_time, datetime.now()))
