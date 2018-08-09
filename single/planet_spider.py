import sys
import json
import logging
import requests
import planet_sql
from planet import Planet
from datetime import datetime

log = logging.getLogger()


class PlanetSpider(Planet):
    max_page_size = 1000  # 每页最大多少条数据
    max_size = sys.maxsize

    def __init__(self):
        super(PlanetSpider, self).__init__()
        self.name = None
        self.user_id = None
        self.user_hash = None
        self.gender = None
        self.location = None
        self.hometown = None
        self.birth_year = None
        self.horoscope = None
        self.profession = None
        self.blast = None
        self.head_img = None
        self.data = None
        self.photos_data = None
        self.distance = 0
        self.last_update = None

    def find_random_member(self):
        """发现页 -> 爬取全部用户或指定地区用户信息

        """

        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/v2/dog-all-random'
        data = {"hash": Planet.my_hash, "pagesize": 50, "seed": 655572327}  # "location": "P3569589400"
        log.info("Start find random member")
        for offset in range(PlanetSpider.max_size):
            data["offset"] = offset
            resp = requests.post(api, json=data, headers=Planet.headers).json()
            members = resp['members']
            for index, member in enumerate(members):
                self.user_hash = resp['uid_hashes'][index]
                self.parse(member)

            if len(members) == 0:
                log.info("End Find random member : %d", offset)
                break
            log.info("Find random member : %d", offset)

    def find_nearby_member(self):
        """发现页 -> 附近 -> 爬取距离用户信息

        """

        next_pos = 0
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/dog-nearby-members'
        data = {"hash": Planet.my_hash, "pagesize": 50, "geo_type": "wgs84", "geo_lat": 23.122986,
                "geo_lng": 113.389, "gender": 2}
        log.info("Start find nearby member")
        while True:
            data["offset"] = next_pos
            resp = requests.post(api, json=data, headers=Planet.headers).json()

            members = resp['members']
            next_pos = resp['next_pos']

            for index, member in enumerate(members):
                self.distance = resp['distances'][index]
                self.user_hash = resp['uid_hashes'][index]
                self.last_update = resp['last_updates'][index]
                self.parse(member)

            if next_pos == 0:
                log.info("End Find nearby member : %d", next_pos)
                break
            log.info("Find nearby member : %d", next_pos)

    def parse(self, user, user_hash=None):
        """parse member info (It's a Dict)

        :param user_hash: hash
        :param user: Dict User
        """
        self.user_id = user['Id']  # Id
        self.name = user['Name']  # 昵称
        self.gender = user['Gender']  # 性别
        self.location = user['Location']  # 常住地
        self.hometown = user['Hometown']  # 家乡
        self.birth_year = user['BirthYear']  # 出生年份
        self.horoscope = user['Horoscope']  # 星座
        self.profession = user['Profession']  # 职业
        self.blast = user['Blast']  # 个性签名
        self.head_img = user['Headimg']  # 头像
        self.data = json.dumps(user, ensure_ascii=False)  # data数据
        if user_hash:
            self.user_hash = user_hash

        self.__member_info()
        self.__member_photos()
        self.__member_dynamic()

    def __member_info(self):
        """ request to get user info and save data (爬取指定用户个人信息并保存)
        
        """

        # tb_user
        now = datetime.now()
        effect_count = self.handler(planet_sql.find_user(), (self.user_id,))
        if effect_count == 0:
            self.handler(planet_sql.add_user(),
                         (self.user_id, self.user_hash, self.name, self.gender, self.head_img, self.location,
                          self.hometown, self.birth_year, self.horoscope, self.profession, self.blast, now, now,
                          self.data, self.distance, self.last_update, self.photos_data))
        else:
            self.handler(planet_sql.update_user(),
                         (self.name, self.head_img, self.location, self.hometown, self.birth_year, self.horoscope,
                          self.profession, self.blast, now, self.data, self.last_update, self.photos_data,
                          self.user_id))

    def __member_dynamic(self):
        """ request to get user photos and save data (爬取指定用户的动态数据并保存)

        """

        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/tlmsg/list'
        data = {"list": 'user', "offset": 0, "pagesize": PlanetSpider.max_page_size,
                "user_id": self.user_id, "hash": self.user_hash}
        resp = requests.post(api, json=data, headers=Planet.headers).json()

        now = datetime.now()
        messages = resp['messages']
        for index, message in enumerate(messages):
            msg_id = message['id']  # 动态id
            comment = message['comment']  # 动态内容
            # views = message['views']  # 查看人次
            # comments = message['comments']   # 评论次数
            disable_comment = message['disable_comment']  # 是否关闭了评论
            create_time = message['ctime']  # 创建时间
            tl_hash = resp['tl_hashes'][index]  # 动态hash值
            msg_type = message['msg_type']  # 消息类型
            member_photos = {}  # photo数据

            message = message['message']
            if msg_type == 'Text':
                comment = message['message']['text']['Text']
            elif msg_type == 'PHOTO':
                member_photos = message['photo']

            data = json.dumps(message, ensure_ascii=False)
            photos_data = json.dumps(member_photos, ensure_ascii=False)
            # tb_user_talk
            self.handler(planet_sql.add_user_talk(), (self.user_id, msg_id, tl_hash, comment, create_time, msg_type,
                                                      disable_comment, photos_data, data, now))

    def __member_photos(self):
        """ request to get user albums and save data (爬取指定用户的相册数据并保存)

        """

        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/album/photos'
        data = {"hash": self.user_hash, "user_id": self.user_id, "offset": 0, "pagesize": PlanetSpider.max_page_size}
        resp = requests.post(api, json=data, headers=Planet.headers).json()
        member_photos = resp['photos']
        now = datetime.now()
        for member_photo in member_photos:
            # tb_user_photo
            self.handler(planet_sql.add_user_photo(), (self.user_id, member_photo['url'], now))
        self.photos_data = json.dumps(member_photos, ensure_ascii=False)


# 程序入口
if __name__ == '__main__':
    ps = PlanetSpider()
    # 随机爬取用户
    ps.find_random_member()
    # 爬取附近用户
    # ps.find_nearby_member()
