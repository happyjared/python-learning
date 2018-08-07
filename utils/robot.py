# coding=UTF-8
import logging
import requests

log = logging.getLogger()
default_key = '6ad11c98a4da4cb986ff1d2d83b49347'
default_reply = 'What ???'


def call_text_v1(msg, user_id, key=default_key):
    """发送数据给图灵机器人并返回响应(V1版本接口)
    
    :param msg: 文本消息
    :param user_id: 用户标识
    :param key: 图灵Api Key
    :return: Turing Robot Response
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
        log.info('Call : %s . V1 Turing Response : %s', msg, reply_text)
        return reply_text if reply_text else default_reply
    except:
        log.exception('Call V1 Turing Response Error')
        return default_reply


def call_text_v2(msg, user_id, key=default_key):
    """发送数据给图灵机器人并返回响应(V2版本接口)

    :param msg: 文本消息
    :param user_id: 用户标识
    :param key: 图灵Api Key
    :return: Turing Robot Response
    """

    api = 'http://openapi.tuling123.com/openapi/api/v2'
    data = {
        "reqType": 0,  # 输入类型:0-文本(默认)、1-图片、2-音频
        "perception": {
            "inputText": {
                "text": msg
            }
        },
        "userInfo": {
            "apiKey": key,
            "userId": user_id[1:33]
        }
    }
    try:
        resp = requests.post(api, json=data).json()
        result = resp.get('results')[0]
        values = result.get('values')
        result_type = result['resultType']

        reply_text = None
        if result_type == 'text':
            # 文字回复
            reply_text = values.get('text')
        elif result_type == 'url':
            # URL回复
            reply_text = values.get('url')

        log.info('Call : %s . V2 Turing Response : %s', msg, reply_text)
        return reply_text if reply_text else default_reply
    except:
        log.exception('Call V2 Turing Response Error')
        return default_reply
