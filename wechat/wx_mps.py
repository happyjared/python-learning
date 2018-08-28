import re
import time
import json
import requests
import wx_mps_sql
from utils import pgs
from datetime import datetime


def postgres():
    """获取Postgres操作实例"""

    wx_mps = 'wxmps'  # 这里数据库、用户、密码一致(需替换成实际的)
    return pgs.Pgs(host='localhost', port='12432', db_name=wx_mps,
                   user=wx_mps, password=wx_mps)


class WxMps(object):
    """微信公众号文章、评论抓取爬虫"""

    def __init__(self, _biz, _pass_ticket, _app_msg_token, _cookie, _offset=0):
        self.offset = _offset
        self.biz = _biz  # 公众号标志
        self.msg_token = _app_msg_token  # 票据(非固定)
        self.pass_ticket = _pass_ticket  # 票据(非固定)
        self.headers = {
            'Cookie': _cookie,  # Cookie(非固定)
            'User-Agent': 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.132 '
        }
        self.postgres = postgres()

    def start(self):
        """请求获取公众号的文章接口"""

        offset = self.offset
        while True:
            api = 'https://mp.weixin.qq.com/mp/profile_ext?action=getmsg&__biz={0}&f=json&offset={1}' \
                  '&count=11&is_ok=1&scene=124&uin=777&key=777&pass_ticket={2}&wxtoken=&appmsg_token' \
                  '={3}&x5=1&f=json'.format(self.biz, offset, self.pass_ticket, self.msg_token)

            resp = requests.get(api, headers=self.headers).json()
            ret, status = resp.get('ret'), resp.get('errmsg')  # 状态信息
            if ret == 0 or status == 'ok':
                offset = resp['next_offset']  # 下一次请求偏移量
                general_msg_list = resp['general_msg_list']
                msg_list = json.loads(general_msg_list)['list']  # 获取文章列表
                for msg in msg_list:
                    comm_msg_info = msg['comm_msg_info']  # 该数据是本次推送多篇文章公共的
                    msg_id = comm_msg_info['id']  # 文章id
                    msg_type = comm_msg_info['type']  # 文章类型
                    post_time = datetime.fromtimestamp(comm_msg_info['datetime'])  # 发布时间
                    msg_data = json.dumps(comm_msg_info, ensure_ascii=False)  # msg原数据

                    app_msg_ext_info = msg.get('app_msg_ext_info')  # article原数据
                    if app_msg_ext_info:
                        # 本次推送的首条文章
                        self._parse_articles(app_msg_ext_info, msg_id, post_time, msg_type, msg_data)
                        # 本次推送的其余文章
                        multi_app_msg_item_list = app_msg_ext_info.get('multi_app_msg_item_list')
                        if multi_app_msg_item_list:
                            for item in multi_app_msg_item_list:
                                msg_id = item['fileid']  # 文章id
                                if msg_id == 0:
                                    msg_id = int(time.time() * 1000)  # 设置唯一id,解决部分文章id=0出现唯一索引冲突的情况
                                self._parse_articles(item, msg_id, post_time, msg_type)
                print('next offset is %d' % offset)
            else:
                print('Before break , Current offset is %d' % offset)
                break

    def _parse_articles(self, info, msg_id, post_time, msg_type, msg_data=None):
        """解析嵌套文章数据并保存入库"""

        title = info.get('title')  # 标题
        cover = info.get('cover')  # 封面图
        author = info.get('author')  # 作者
        digest = info.get('digest')  # 关键字
        del_flag = info.get('del_flag')  # 标志位
        source_url = info.get('source_url')  # 原文地址
        content_url = info.get('content_url')  # 微信地址
        ext_data = json.dumps(info, ensure_ascii=False)  # 原始数据

        self.postgres.handler(wx_mps_sql.add_article(), (msg_id, post_time, msg_type, msg_data, title,
                                                         author, cover, digest, content_url, source_url,
                                                         del_flag, ext_data, datetime.now()))

        self._parse_article_detail(content_url)

    def _parse_article_detail(self, content_url):
        """从文章页提取相关参数用于获取评论"""

        try:
            api = content_url.replace('amp;', '').replace('http', 'https')
            html = requests.get(api, headers=self.headers).text
        except:
            print('获取评论失败' + content_url)
        else:
            # group(0) is current line
            comment_id = re.search(r'var comment_id = "(.*)" \|\| "(.*)" \* 1;', html).group(1)  # 当前文章评论接口请求id(固定)
            app_msg_id = re.search(r"var appmsgid = '' \|\| '(.*)'\|\|", html).group(1)  # 评论票据(非固定)
            appmsg_token = re.search(r'window.appmsg_token = "(.*)";', html).group(1)  # 评论票据(非固定)

            # 两者缺一不可
            if appmsg_token and app_msg_id:
                print('Crawl article comments: ' + api)
                self._crawl_comments(app_msg_id, comment_id, appmsg_token)

    def _crawl_comments(self, app_msg_id, comment_id, appmsg_token):
        """抓取文章的评论"""

        api = 'https://mp.weixin.qq.com/mp/appmsg_comment?action=getcomment&scene=0&__biz={0}' \
              '&appmsgid={1}&idx=1&comment_id={2}&offset=0&limit=100&uin=777&key=777' \
              '&pass_ticket={3}&wxtoken=777&devicetype=android-26&clientversion=26060739' \
              '&appmsg_token={4}&x5=1&f=json'.format(self.biz, app_msg_id, comment_id,
                                                     self.pass_ticket, appmsg_token)
        resp = requests.get(api, headers=self.headers).json()
        ret, status = resp['base_resp']['ret'], resp['base_resp']['errmsg']
        if ret == 0 or status == 'ok':
            elected_comment = resp['elected_comment']
            for comment in elected_comment:
                nick_name = comment.get('nick_name')  # 昵称
                logo_url = comment.get('logo_url')  # 头像
                create_time = datetime.fromtimestamp(comment.get('create_time'))  # 评论时间
                content = comment.get('content')  # 评论内容
                content_id = comment.get('content_id')  # id
                like_num = comment.get('like_num')  # 点赞数
                reply_list = comment.get('reply')['reply_list']  # 回复数据
                reply_data = json.dumps(reply_list)  # 原数据

                reply_like_num = 0
                reply_content = None
                reply_create_time = None
                if reply_list:
                    reply = reply_list[0]  # 首条评论回复
                    reply_content = reply['content']  # 回复评论内容
                    reply_create_time = datetime.fromtimestamp(reply['create_time'])  # 回复评论手时间
                    reply_like_num = reply.get('reply_like_num')  # 回复评论点赞数

                self.postgres.handler(wx_mps_sql.add_article_comment(), (comment_id, nick_name, logo_url,
                                                                         content_id, content, like_num, create_time,
                                                                         reply_content, reply_create_time,
                                                                         reply_like_num, reply_data, datetime.now()))


if __name__ == '__main__':
    biz = 'MzI2NDk5NzA0Mw=='  # "36氪"
    pass_ticket = 'NDndxxaZ7p6Z9PYulWpLqMbI0i3ULFeCPIHBFu1sf5pX2IhkGfyxZ6b9JieSYRUy'
    app_msg_token = '971_Z0lVNQBcGsWColSubRO9H13ZjrPhjuljyxLtiQ~~'
    cookie = 'wap_sid2=CO3YwOQHEogBQnN4VTNhNmxQWmc3UHI2U3kteWhUeVExZHFVMnN0QXlsbzV' \
             'JRUJKc1pkdVFUU2Y5UzhSVEtOZmt1VVlYTkR4SEllQ2huejlTTThJWndMQzZfYUw2Sld' \
             'LVGVMQUthUjc3QWdVMUdoaGN0Nml2SU05cXR1dTN2RkhRUVd1V2Y3SFJ5d01BQUF+fjCB1pLcBTgNQJVO'
    # 以上信息不同公众号每次抓取都需要借助抓包工具做修改
    wxMps = WxMps(biz, pass_ticket, app_msg_token, cookie)
    wxMps.start()  # 开始爬取文章及评论
