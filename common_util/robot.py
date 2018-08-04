# coding=UTF-8
import logging
import requests

log = logging.getLogger()


def call_text(msg, user_id, key='6ad11c98a4da4cb986ff1d2d83b49347'):
    """发送数据给图灵机器人并返回响应
    
    :param msg: 消息
    :param user_id: 标识
    :param key: 密钥
    :return: 
    """

    api = 'http://www.tuling123.com/openapi/api'
    data = {
        'key': key,
        'info': msg,
        'userid': user_id,
    }
    try:
        resp = requests.post(api, data=data).json()
        reply_text = resp.get('text')
        log.info('Call : %s . Turing Response : %s', msg, reply_text)
        return reply_text
    except:
        log.exception('Call Turing Response Error')
        return
