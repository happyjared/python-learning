# -*- coding: utf-8 -*-
# @author : jared
# @date : 2019/6/22 17:39

import time
import json
import itchat
import requests


@itchat.msg_register(itchat.content.TEXT)
def text(msg):
    receive_text = msg['Text']
    to_user_id = msg['ToUserName']  # 接收人
    from_user_id = msg['FromUserName']  # 发送人

    while receive_text == "1":
        resp = requests.post('https://api.chelaile.net.cn/bus/line!busesDetail.action?'
                             'sign=3BszHrCL%2BYb8Ix6to1kyJw%3D%3D&lineName=773&cityId=040'
                             '&lineNo=07730&stationName=%E5%87%8C%E5%A1%98%E6%9D%911&cshow=linedetail'
                             '&targetStationLat=23.173592746309094&targetOrder=6&targetStationLng=113.40505964506974'
                             '&lineId=020-07730-0&s=android&last_src=app_qq_sj&v=3.79.2')
        resp2 = requests.post('https://api.chelaile.net.cn/bus/line!busesDetail.action?sign=CMkEe%2BVN716ghdReiM5G9Q%3D%3D&cshow=linedetail&nw=WIFI&stats_referer=searchResult&lineName=773&language=3&cityId=040&AndroidID=3a991014707e4ab7&mac=14%3Aa5%3A1a%3Ac0%3A96%3Ae1&lineNo=07730&phoneBrand=HUAWEI&stationName=%E5%AE%B6%E5%AE%B6%E4%B9%90%E5%8C%BB%E9%99%A22&lchsrc=icon&udid=d7317fff-cc3c-4daa-b767-db9cc1d3b8e0&targetStationLat=23.135617742613036&system_push_open=1&direction=1&deviceType=WAS-AL00&targetOrder=4&push_open=1&o1=a885683212c1a4af371435766be40e941a0b9c26&sv=8.0.0&targetStationLng=113.40046849892799&first_src=app_qq_sj&screenHeight=1848&lineId=020-07730-1&userAgent=Mozilla%2F5.0+%28Linux%3B+Android+8.0.0%3B+WAS-AL00+Build%2FHUAWEIWAS-AL00%3B+wv%29+AppleWebKit%2F537.36+%28KHTML%2C+like+Gecko%29+Version%2F4.0+Chrome%2F70.0.3538.110+Mobile+Safari%2F537.36&vc=146&userId=unknown&isNewLineDetail=1&filter=1&s=android&last_src=app_qq_sj&v=3.79.2&wifi_open=1&imei=863095033108438&stats_order=1-1&screenDensity=3.0&flpolicy=0')
        time.sleep(30)


itchat.auto_login(hotReload=True, enableCmdQR=2)
itchat.run()
