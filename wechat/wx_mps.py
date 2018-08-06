import re
import time
import json
import requests
import wx_mps_sql
from utils import pgs
from datetime import datetime


class WxMps:
    def __init__(self):
        self.biz = 'MzU4NjA4NjMwNw=='  # 刺猬体验
        self.pass_ticket = 'M7xz2Lwxxg2%25252F8HQMNubFvBpO0NJd70CNvsBxMFErvIDKgQDX0rfCbv80yPHcQKNK'
        self.headers = {
            'Cookie': 'pgv_pvi=6708115456; pgv_si=s4773475328; ptisp=cm; RK=XopsBML0RK; ptcz=73aac9f580839d2b9c7f634ca28f3e19c8bd037390a7f639e5332831aa13b8c4; uin=o1394223902; skey=@KWMdUovjK; pt2gguin=o1394223902; rewardsn=; wxuin=2089823341; devicetype=android-26; version=26060739; lang=zh_HK; pass_ticket=M7xz2Lwxxg2/8HQMNubFvBpO0NJd70CNvsBxMFErvIDKgQDX0rfCbv80yPHcQKNK; wap_sid2=CO3YwOQHEogBME9vTDBQc09lUmJNZVpSV1R2WEJYbVdweDZscHFaRGNNUnp0S2ZVdURJaFFSa3F0cV9pM0JYSzhJNmVWdTZaS2Fhb1FPRkhEZ2UwNVVabm9fUUJBcl9nNjdfcnMxVEdhMllKUFY1UExua0NfekFkQ0FWYXVYcU9yVmxJeXRqNGx5QU1BQUF+fjCd5qHbBTgNQAE=; wxtokenkey=777',
            'User-Agent': 'Mozilla/5.0 (Linux; Android 8.0; WAS-AL00 Build/HUAWEIWAS-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.132 MQQBrowser/6.2 TBS/044203 Mobile Safari/537.36 MicroMessenger/6.6.7.1321(0x26060739) NetType/WIFI Language/zh_HK'
        }

    def spider_articles(self):
        """抓取公众号的文章列表
        
        :return: 
        """

        offset = 0
        while True:
            # 微信链接有时效性，Api参数中应根据手机抓包获取最新的cookie和msg_token
            msg_token = '968_xDms46Qr4aDyyGztsd2KrCTBkhFG7CYkhQ4Nuw~~'
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
                    msg_id = comm_msg_info['id']
                    date_time = datetime.fromtimestamp(comm_msg_info['datetime'])
                    msg_type = comm_msg_info['type']
                    msg_data = json.dumps(comm_msg_info, ensure_ascii=False)

                    app_msg_ext_info = msg.get('app_msg_ext_info')
                    if app_msg_ext_info:
                        self.parse_data(app_msg_ext_info, msg_id, date_time, msg_type, msg_data)
                        multi_app_msg_item_list = app_msg_ext_info.get('multi_app_msg_item_list')
                        if multi_app_msg_item_list:
                            for item in multi_app_msg_item_list:
                                msg_id = item['fileid']
                                if msg_id == 0:
                                    msg_id = int(time.time() * 1000)
                                self.parse_data(item, msg_id, date_time, msg_type, '{}')
                if not msg_list:
                    break
                # 必要的休眠
                time.sleep(30)
                print('next offset is %d' % offset)
            else:
                print('Current end offset is %d' % offset)
                break

    def parse_data(self, info, msg_id, date_time, msg_type, msg_data):
        title = info['title']  # 标题
        author = info['author']  # 作者
        cover = info['cover']  # 封面图
        del_flag = info.get('del_flag')  # 标志位
        digest = info['digest']  # 关键字
        source_url = info['source_url']  # 原文地址
        ext_data = json.dumps(info, ensure_ascii=False)  # 原始数据
        content_url = info['content_url']  # 微信地址

        try:
            html = requests.get(content_url, headers=self.headers).text
        except requests.exceptions.MissingSchema:
            print('requests.exceptions.MissingSchema = ' + content_url)
        else:
            # group(0) is current line
            comment_str = re.search(r'var comment_id = "(.*)" \|\| "(.*)" \* 1;', html)
            if comment_str:
                comment_id = comment_str.group(1)
                token_str = re.search(r'window.appmsg_token = "(.*)";', html)
                if token_str:
                    token = token_str.group(1)
                    if token:
                        self.__handle_data(wx_mps_sql.add_article(), (msg_id, date_time, msg_type, msg_data,
                                                                      title, author, cover, digest,
                                                                      content_url, source_url, comment_id,
                                                                      token, del_flag, ext_data,
                                                                      datetime.now()))
                        # self.get_comment(comment_id, token) # 爬取评论

    def get_comment(self, comment_id, msg_token):
        """抓取某一文章的评论内容
        
        :param comment_id: 标志
        :param msg_token: 票据
        :return: 
        """

        api = 'https://mp.weixin.qq.com/mp/appmsg_comment?action=getcomment&scene=0&__biz={0}' \
              '&appmsgid=2247500695&idx=1&comment_id={1}&offset=0&limit=100&uin=777&key=777' \
              '&pass_ticket={2}&wxtoken=777&devicetype=android-26&clientversion=26060739' \
              '&appmsg_token={3}&x5=1&f=json'.format(self.biz, comment_id, self.pass_ticket, msg_token)
        print(api)
        resp = requests.get(api, headers=self.headers).json()
        status = resp['base_resp']['errmsg']
        if status == 'ok':
            elected_comment = resp['elected_comment']
            # comment_data = json.dumps(elected_comment, ensure_ascii=False)
            for comment in elected_comment:
                nick_name = comment['nick_name']  # 昵称
                logo_url = comment['logo_url']  # 评论人头像
                create_time = datetime.fromtimestamp(comment['create_time'])  # 评论时间
                content = comment['content']  # 评论内容
                content_id = comment['content_id']  # id
                like_num = comment['like_num']  # 点赞数
                reply_list = comment['reply']['reply_list']  # 原数据

                reply_like_num = 0
                reply_content = None
                reply_create_time = None
                reply_data = json.dumps(reply_list)  # 原数据
                if reply_list:
                    reply = reply_list[0]  # 第1条回复评论
                    reply_content = reply['content']  # 回复评论内容
                    reply_create_time = datetime.fromtimestamp(reply['create_time'])  # 回复评论手时间
                    reply_like_num = reply.get('reply_like_num')  # 回复评论点赞数

                self.__handle_data(wx_mps_sql.add_article_comment(), (comment_id, nick_name, logo_url,
                                                                      content_id, content, like_num, create_time,
                                                                      reply_content, reply_create_time, reply_like_num,
                                                                      reply_data, datetime.now()))

    @staticmethod
    def __handle_data(sql, params):
        pgs.handler(sql, params, db_name='wxmps')

    def get_article_by_title(self, title):
        rows = pgs.fetch_all(wx_mps_sql.find_article(), ('%' + title + '%',), db_name='wxmps')
        if rows:
            for row in rows:
                comment_id = row[0]
                comment_token = row[1]
                if comment_id and comment_token:
                    self.get_comment(comment_id, comment_token)


if __name__ == '__main__':
    wxMps = WxMps()
    # wxMps.spider_articles()
    wxMps.get_article_by_title('我想认识你')
    # wxMps.get_comment('397825638695813120',
    #                   '968_ueuCDgjouhU5xWv5jOYRBs3OMFEutLK52vvP0s--DPZlmGflhRyGwzuTxPuyAoaAJonRTKp2uJy_9uFF')
