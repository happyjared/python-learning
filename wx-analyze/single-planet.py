# coding=UTF-8
import time
import json
import requests
import tuling


# 微信小程序: 单身星球社区自动评论机器人
class SinglePlanet(object):
    """
        初始化数据
    """

    def __init__(self):
        self.header = {
            'Authorization': 'token djM6xZStuyhZask3vssgz8xMtjrrIAGR7JsU6gSvwp8ClkkGrVQRI6K34_BnjyVriHZEopaxBT1zwkt11eEO8bHnw-JAESD3Kv4E4IdfW7lg2GEP46eyRP_ccFLo6VKwDjRRA48B4hW9Mp7L5pRPaBwCpcIUPKbN_oQLnVRIiI1ZEY9k'
        }
        self.pg_ip = '139.199.162.33'
        self.pg_port = '15234'
        self.pg_db = 'planet'

    """
        与你有缘
    """

    def recommend(self):
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/dog-recommend'
        resp = requests.post(api, headers=self.header)
        result = json.loads(resp.text)
        print(result)

    """
        用户动态
    """

    def dynamic(self):
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/tlmsg/list'
        data = {"list": "explore", "offset": 0, "pagesize": 20}
        resp = requests.post(api, json=data, headers=self.header)
        result = json.loads(resp.text)
        # print(result)

        messages = result['messages']
        for i, message in enumerate(messages):
            # 消息id
            msg_id = message['id']
            # 用户id
            user_id = message['user_id']
            # 动态内容
            comment = message['comment']
            # 查看人次
            views = message['views']
            # 评论次数
            comments = message['comments']
            # 是否关闭了评论
            disable_comment = message['disable_comment']
            # 创建时间
            create_time = message['ctime']

            # 对应动态hash值
            tl_hash = result['tl_hashes'][i]

            # 对应用户信息
            user = result['users'][i]
            # 昵称
            name = user['Name']
            # 常住地
            location = user['Location']
            # 家乡
            hometown = user['Hometown']
            # 出生年份
            birthyear = user['BirthYear']
            # 星座
            horoscope = user['Horoscope']
            # 职业
            profession = user['Profession']
            # 个性签名
            blast = user['Blast']
            # 头像
            headimg = user['Headimg']
            msg = tuling.get_text_response(comment, user_id)
            print(comment, end='')
            self.msg_comment(msg_id, msg, tl_hash, user_id)

    """
        消息评论
    """

    def msg_comment(self, msg_id, msg, tl_hash, user_id):
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/tlmsg/comment/add'
        data = {"tl_id": msg_id, "message": msg, "hash": tl_hash, "to_user_id": user_id}
        resp = requests.post(api, json=data, headers=self.header)
        result = json.loads(resp.text)
        print(result)

    """
        获取access_token
    """

    def access_token(self):
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/push/access_token'
        data = {}
        resp = requests.post(api, json=data, headers=self.header)
        result = json.loads(resp.text)
        print(result)

    """
        最新提醒
    """

    def latest_notify(self):
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/my-latest-notifications'
        data = {}
        resp = requests.post(api, json=data, headers=self.header)
        result = json.loads(resp.text)
        print(result)

    """
        消息回复
    """

    def my_comments(self):
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/v2/tlmsg/comments/my-received'
        data = {"offset": 0}
        resp = requests.post(api, json=data, headers=self.header)
        result = json.loads(resp.text)
        # print(result)
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
        发现频道
    """

    def find_members(self):
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/v2/dog-all-random'
        data = {"hash": "2476115a", "pagesize": 50, "location": "P3569589400", "offset": 0, "seed": 631836964}
        resp = requests.post(api, json=data, headers=self.header)
        result = json.loads(resp.text)
        # print(result)
        members = result['members']
        for member in members:
            # TODO 同上
            pass

    """
        发现附近
    """

    def find_nearby(self):
        api = 'https://www.quanquanyuanyuan.cn/huodong/dog/api/dog-nearby-members'
        data = {"hash": "2476115a", "pagesize": 50, "geo_type": "wgs84", "geo_lat": 23.122986, "geo_lng": 113.389,
                "gender": 2, "offset": 0}
        resp = requests.post(api, json=data, headers=self.header)
        result = json.loads(resp.text)
        # print(result)
        members = result['members']
        for i, member in enumerate(members):
            # TODO
            distance = result['distances'][i]
            last_update = result['last_updates'][i]


if __name__ == '__main__':
    sp = SinglePlanet()
    # sp.recommend()
    sp.dynamic()
    # sp.comment()
