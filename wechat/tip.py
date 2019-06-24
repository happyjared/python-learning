# -*- coding: utf-8 -*-
# @author : Jared
# @date : 2019/6/22 17:39

import time
import json
import itchat
import requests
from datetime import datetime


class CheLaiLe:
    start = False


class ShellIsland:
    start = False


file_helper = 'filehelper'


@itchat.msg_register(itchat.content.TEXT)
def text(msg):
    receive_text = msg['Text']
    to_user_id = msg['ToUserName']  # 接收人
    # from_user_id = msg['FromUserName']  # 发送人

    if to_user_id == file_helper:
        if receive_text.startswith("b"):
            # 车来了
            CheLaiLe.start = not CheLaiLe.start
            while CheLaiLe.start:
                if datetime.now().hour < 12:
                    resp = requests.get(
                        'https://api.chelaile.net.cn/bus/line!busesDetail.action'
                        '?sign=3BszHrCL%2BYb8Ix6to1kyJw%3D%3D&v=3.79.2&s=android'
                        '&cityId=040&targetOrder=6&lineId=020-07730-0').text
                else:
                    resp = requests.get(
                        'https://api.chelaile.net.cn/bus/line!busesDetail.action'
                        '?sign=CMkEe%2BVN716ghdReiM5G9Q%3D%3D&s=android&v=3.79.2'
                        '&cityId=040&targetOrder=4&lineId=020-07730-1').text
                resp = resp.replace("**YGKJ", "").replace("YGKJ##", "")
                json_content = json.loads(resp)
                data = json_content.get('jsonr').get("data")
                tip_desc, pre_arrival_desc = data.get("tip").get("desc"), data.get("depDesc")

                send_msg = "{}\n[{}]".format(tip_desc, pre_arrival_desc)
                itchat.send(send_msg, toUserName=file_helper)
                time.sleep(30)

        if receive_text.startswith("s"):
            # 贝壳小岛
            ShellIsland.start = not ShellIsland.start
            while ShellIsland.start:
                itchat.send("", toUserName=file_helper)
                time.sleep(60)


itchat.auto_login(hotReload=True, enableCmdQR=2)
itchat.run()
