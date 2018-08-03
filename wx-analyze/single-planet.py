# coding=UTF-8
import sys
import time
import json
import tuling
import pg_util as pu
import req_util as ru
from datetime import datetime


# 微信小程序: 单身星球社区自动评论机器人
class SinglePlanet(object):
    """
        初始化数据
    """

    def __init__(self):
        self.header = {
            'Authorization': 'token djM6xZStuyhZask3vssgz8xMtjrrIAGR7JsU6gSvwp8ClkkGrVQRI6K34_BnjyVriHZEopaxBT1zwkt11eEO8bHnw-JAESD3Kv4E4IdfW7lg2GEP46eyRP_ccFLo6VKwDjRRA48B4hW9Mp7L5pRPaBwCpcIUPKbN_oQLnVRIiI1ZEY9k'
        }
        self.tl_key = '6bb65cb09a144030aa5ffffe37b3251f'
        self.my_hash = ''
        self.load_num = 1000

    """
        解析并保存用户数据
    """

    def parse_member(self, user, uid_hash=None, distance=0, last_update=None):
        # Id
        user_id = user['Id']
        # 昵称
        name = user['Name']
        # 性别
        gender = user['Gender']
        # 常住地
        location = user['Location']
        # 家乡
        hometown = user['Hometown']
        # 出生年份
        birth_year = user['BirthYear']
        # 星座
        horoscope = user['Horoscope']
        # 职业
        profession = user['Profession']
        # 个性签名
        blast = user['Blast']
        # 头像
        head_img = user['Headimg']

        now = datetime.now()
        data = json.dumps(user)
        photos_data = self.photos(uid_hash, user_id)
        p_data = json.dumps(photos_data)

        # tb_user
        sql = 'SELECT id FROM tb_user where user_id=%s'
        row_count = pu.handler(sql, (user_id,))

        if row_count == 0:
            # Add
            sql = 'INSERT INTO tb_user(user_id, uid_hash,"name",gender,head_img,' \
                  'location,hometown,birth_year,horoscope,profession,blast,update_time,' \
                  'create_time,"data",distance,d_last_update,photos_data) ' \
                  'VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'
            pu.handler(sql, (user_id, uid_hash, name, gender, head_img, location, hometown, birth_year, horoscope,
                             profession, blast, now, now, data, distance, last_update, p_data))
        else:
            # Update
            sql = 'update tb_user set "name"=%s,head_img=%s,location=%s,hometown=%s,birth_year=%s,horoscope=%s,' \
                  'profession=%s,blast=%s,update_time=%s,"data"=%s,distance=%s,d_last_update=%s,photos_data=%s' \
                  'where user_id=%s'
            pu.handler(sql, (name, head_img, location, hometown, birth_year, horoscope,
                             profession, blast, now, data, distance, last_update, p_data, user_id))

        # tb_user_photo
        for photo in photos_data:
            sql = 'INSERT INTO tb_user_photo(user_id, photo,create_time) VALUES (%s,%s,%s)'
            url = photo['url']
            pu.handler(sql, (user_id, url, now))

        # tb_user_talk
        self.dynamic('user', user_id=user_id, user_hash=uid_hash)

    """
        *动态列表
    """

    def dynamic(self, data_list='explore', user_id=None, user_hash=None):
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/tlmsg/list'
        data = {"list": data_list, "offset": 0, "pagesize": 20}
        if user_id and user_hash:
            data['user_id'] = user_id
            data['hash'] = user_hash
            data['pagesize'] = self.load_num
        result = ru.req_post_json(api, data=data, header=self.header)

        messages = result['messages']
        for index, message in enumerate(messages):
            # 消息id
            msg_id = message['id']
            # 用户id
            user_id = message['user_id']
            # 动态内容
            comment = message['comment']
            # 查看人次
            # views = message['views']
            # 评论次数
            # comments = message['comments']
            # 是否关闭了评论
            disable_comment = message['disable_comment']
            # 创建时间
            create_time = message['ctime']
            # 动态hash值
            tl_hash = result['tl_hashes'][index]
            # 消息类型
            msg_type = message['msg_type']

            if data_list == 'explore':
                # 对应用户信息
                user = result['users'][index]
                # 主页动态
                self.parse_member(user)
            else:
                m = message['message']
                photos = {}
                if msg_type == 'PHOTO':
                    photos = m['photo']
                elif msg_type == 'TEXT':
                    comment = m['text']['Text']

                # tb_user_talk
                sql = 'INSERT INTO tb_user_talk(user_id, msg_id,tl_hash,"comment",c_time,' \
                      'msg_type,disable_comment,photos_data,"data",create_time) VALUES ' \
                      '(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'
                now = datetime.now()
                data = json.dumps(m)
                photos_data = json.dumps(photos)

                pu.handler(sql, (user_id, msg_id, tl_hash, comment, create_time, msg_type,
                                 disable_comment, photos_data, data, now))

    """
        *消息回复
    """

    def my_comments(self):
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/v2/tlmsg/comments/my-received'
        data = {"offset": 0}
        result = ru.req_post_json(api, data=data, header=self.header)

        comments = result['comments']
        for comment in comments:
            id = comment['id']
            user_id = comment['user_id']
            to_user_id = comment['to_user_id']
            tl_id = comment['tl_id']
            msg_id = comment['msg_id']
            ctime = comment['ctime']
            message = comment['message']
            text = message['text']['Text']

    """
        *评论消息
    """

    def msg_comment(self, tl_id, msg, tl_hash, to_user_id):
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/tlmsg/comment/add'
        data = {"tl_id": tl_id, "message": msg, "hash": tl_hash, "to_user_id": to_user_id}
        ru.req_post_json(api, data=data, header=self.header)

    """
        *发现频道
    """

    def find_members(self):
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/v2/dog-all-random'
        #  "location": "P3569589400"
        my_hash = self.get_my_hash()
        max_int = sys.maxsize
        data = {"hash": my_hash, "pagesize": 50, "seed": 655572327}

        for offset in range(max_int):
            data["offset"] = offset
            print('offset is ' + str(offset))

            result = ru.req_post_json(api, data=data, header=self.header)
            members = result['members']
            for index, member in enumerate(members):
                uid_hash = result['uid_hashes'][index]
                self.parse_member(member, uid_hash=uid_hash)

            if len(members) == 0:
                print("All Ending")
                break
            else:
                time.sleep(3)

    """
        *发现附近
    """

    def find_nearby(self):
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/dog-nearby-members'
        next_pos = 0
        my_hash = self.get_my_hash()
        data = {"hash": my_hash, "pagesize": 50, "geo_type": "wgs84", "geo_lat": 23.122986,
                "geo_lng": 113.389, "gender": 2}
        with open('pos.txt', 'a') as f:
            while True:
                data["offset"] = next_pos
                result = ru.req_post_json(api, data=data, header=self.header)

                next_pos = result['next_pos']
                f.write(str(next_pos) + '\n')

                members = result['members']
                for index, member in enumerate(members):
                    distance = result['distances'][index]
                    last_update = result['last_updates'][index]
                    uid_hash = result['uid_hashes'][index]
                    self.parse_member(member, uid_hash=uid_hash, distance=distance, last_update=last_update)
                if next_pos == 0:
                    print("All Ending")
                    break
                else:
                    time.sleep(3)

    """
        * 用户相册
    """

    def photos(self, user_hash, user_id):
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/album/photos'
        data = {"hash": user_hash, "user_id": user_id, "offset": 0, "pagesize": self.load_num}
        result = ru.req_post_json(api, data=data, header=self.header)
        return result['photos']

    """
        个人hash
    """

    def get_my_hash(self):
        if not self.my_hash:
            api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/my-dog-hash'
            result = ru.req_post_json(api, header=self.header)
            uid_hash = result['uid_hash']
            self.my_hash = uid_hash
        return self.my_hash

        # """
        #     获取access_token
        # """
        #
        # def access_token(self):
        #     api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/push/access_token'
        #     ru.req_post_json(api, data=data, header=self.header)
        #
        # """
        #     最新提醒
        # """
        #
        # def latest_notify(self):
        #     api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/my-latest-notifications'
        #     ru.req_post_json(api, data=data, header=self.header)
        #
        # """
        #     与你有缘
        # """
        #
        # def recommend(self):
        #     api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/dog-recommend'
        #     ru.req_post_json(api, header=self.header)


if __name__ == '__main__':
    sp = SinglePlanet()
    # sp.recommend()
    # sp.dynamic()
    # sp.comment()
    # sp.find_nearby()
    sp.find_members()
