import re
import json
import requests


class WxMps:
    def __init__(self):
        self.biz = 'MzU4NjA4NjMwNw=='
        self.pass_ticket = 'gE0OKWkDz44LPIYaUIwj620%2BSiAEn%2Be7ErgC%2BrwB3twIxblzynCaxA%2FZXlxAlqTZ'
        self.headers = {
            'Cookie': 'pgv_pvi=6708115456; pgv_si=s4773475328; ptisp=cm; RK=XopsBML0RK; ptcz=73aac9f580839d2b9c7f634ca28f3e19c8bd037390a7f639e5332831aa13b8c4; uin=o1394223902; skey=@KWMdUovjK; pt2gguin=o1394223902; rewardsn=; wxuin=2089823341; devicetype=android-26; version=26060739; lang=zh_HK; pass_ticket=gE0OKWkDz44LPIYaUIwj620+SiAEn+e7ErgC+rwB3twIxblzynCaxA/ZXlxAlqTZ; wap_sid2=CO3YwOQHEnBNRlZfSktnQ19TYkRRWDYtZ0JobTdpdGd3c0NnRUUzZC1OTjNaUXdHMlhPemhGQ1NTWnQyR3Fzc19rcnozck8wUUdyTUIyVUt4aFNsa3ROc3RBQW5hVVVkY1ljeC13M0VqT2RyUjZCUEoyM0lBd0FBMIPEmdsFOA1AAQ==; wxtokenkey=777',
            'User-Agent': 'Mozilla/5.0 (Linux; Android 8.0; WAS-AL00 Build/HUAWEIWAS-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.132 MQQBrowser/6.2 TBS/044203 Mobile Safari/537.36 MicroMessenger/6.6.7.1321(0x26060739) NetType/WIFI Language/zh_HK'
        }

    def spider_articles(self):
        """抓取公众号的文章列表
        
        :return: 
        """

        offset = 0
        while True:
            # 微信链接有时效性，Api应根据手机抓包获取最新的msg_token
            msg_token = '968_v7xwf3CnfqzVr3oZPtRmAUYdqrRkAqgFZWlG6Q~~'
            api = 'https://mp.weixin.qq.com/mp/profile_ext?action=getmsg&__biz={0}&f=json&offset={1}' \
                  '&count=10&is_ok=1&scene=124&uin=777&key=777&pass_ticket={2}&wxtoken=&appmsg_token' \
                  '={3}&x5=1&f=json'.format(self.biz, offset, self.pass_ticket, msg_token)
            resp = requests.get(api, headers=self.headers).json()
            status = resp['errmsg']
            if status == 'ok':
                offset = resp['next_offset']
                msg_list = json.loads(resp['general_msg_list'])['list']
                for msg in msg_list:
                    comm_msg_info = msg['comm_msg_info']
                    id = comm_msg_info['datetime']
                    datetime = comm_msg_info['datetime']
                    type = comm_msg_info['type']
                    msg_data = json.dumps(comm_msg_info, ensure_ascii=False)

                    app_msg_ext_info = msg.get('app_msg_ext_info')
                    if app_msg_ext_info:
                        title = app_msg_ext_info['title']  # 标题
                        author = app_msg_ext_info['author']  # 作者
                        cover = app_msg_ext_info['cover']  # 封面图
                        del_flag = app_msg_ext_info.get('del_flag')  # 标志位
                        digest = app_msg_ext_info['digest']  # 关键字
                        source_url = app_msg_ext_info['source_url']  # 原文地址
                        ext_data = json.dumps(app_msg_ext_info, ensure_ascii=False)  # 原始数据
                        content_url = app_msg_ext_info['content_url']  # 微信地址

                        try:
                            html = requests.get(content_url, headers=self.headers).text
                        except requests.exceptions.MissingSchema:
                            print('requests.exceptions.MissingSchema = ' + content_url)
                        else:
                            # group(0) is current line
                            comment_str = re.search(r'var comment_id = "(.*)" \|\| "(.*)" \* 1;', html)
                            if comment_str:
                                comment_id = comment_str.group(1)
                                print(comment_id, end='')

                                token_str = re.search(r'window.appmsg_token = "(.*)";', html)
                                if token_str:
                                    token = token_str.group(1)
                                    print(' --- ' + token)
                                    self.__get_comment(comment_id, token, self.pass_ticket)

            else:
                break

    def __get_comment(self, comment_id, msg_token):
        """抓取某一文章的评论内容
        
        :param comment_id: 标志
        :param msg_token: 票据
        :return: 
        """

        api = 'https://mp.weixin.qq.com/mp/appmsg_comment?action=getcomment&scene=0&__biz={0}' \
              '&appmsgid=2247500695&idx=1&comment_id={1}&offset=0&limit=100&uin=777&key=777' \
              '&pass_ticket={2}&wxtoken=777&devicetype=android-26&clientversion=26060739' \
              '&appmsg_token={3}&x5=1&f=json'.format(self.biz, comment_id, self.pass_ticket, msg_token)
        resp = requests.get(api, headers=self.headers).json()
        status = resp['base_resp']['errmsg']
        if status == 'ok':
            elected_comment = resp['elected_comment']
            comment_data = json.dumps(elected_comment, ensure_ascii=False)
            for comment in elected_comment:
                nick_name = comment['nick_name']  # 昵称
                logo_url = comment['logo_url']  # 评论人头像
                create_time = comment['create_time']  # 评论时间
                content = comment['content']  # 评论内容
                content_id = comment['content_id']  # id
                like_num = comment['like_num']  # 点赞数
                reply_list = comment['reply']['reply_list']  # 原数据

                if reply_list:
                    reply = reply_list[0]  # 第1条回复评论
                    reply_content = reply['content']  # 回复评论内容
                    reply_create_time = reply['create_time']  # 回复评论手时间
                    reply_like_num = reply['reply_like_num']  # 回复评论点赞数
                    reply_data = json.dumps(reply_list)  # 原数据


if __name__ == '__main__':
    wxMps = WxMps()
    wxMps.spider_articles()
