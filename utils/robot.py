import logging
import requests

log = logging.getLogger()
key_list = [
    '6ad11c98a4da4cb986ff1d2d83b49347',  # Big brother(24)
    '645105b675cf4422b75ca847fcc836a2',  # Two brother(23,备用)
    'be79ae5380de42fdbbbf6eca5ac49c23',  # Three brother(22)
]
default_reply = '瓦特'


def call_text_v1(msg, user_id):
    """发送数据给图灵机器人并返回响应(V1版本接口)
    
    :param msg: 文本消息
    :param user_id: 用户标识
    :return: Turing Robot Response
    """

    api = 'http://www.tuling123.com/openapi/api'
    data = {
        'key': key_list[0] if int(str(user_id)[-1]) % 2 == 0 else key_list[2],
        'info': msg,
        'userid': user_id,
    }
    resp = requests.post(api, data=data).json()
    code = resp.get('code')
    # 单日调用次数达上限1000
    if code == 40004:
        data['key'] = key_list[1]
        resp = requests.post(api, data=data).json()
    reply_text = resp.get('text')
    log.info('Call : %s . V1 Turing Response : %s', msg, reply_text)
    return reply_text if reply_text else default_reply


def call_text_v2(msg, user_id):
    """发送数据给图灵机器人并返回响应(V2版本接口)

    :param msg: 文本消息
    :param user_id: 用户标识
    :return: Turing Robot Response
    """

    api = 'http://openapi.tuling123.com/openapi/api/v2'
    data = {
        # 输入类型:0-文本(默认)、1-图片、2-音频
        "reqType": 0,
        "perception": {
            "inputText": {
                "text": msg
            }
        },
        "userInfo": {
            "apiKey": key_list[0] if int(str(user_id)[-1]) % 2 == 0 else key_list[2],
            "userId": str(user_id)[1:33]
        }
    }
    resp = requests.post(api, json=data).json()
    code = resp.get('intent').get('code')
    # 单日调用次数达上限1000
    if code == 4003:
        data['userInfo']['apiKey'] = key_list[1]
        resp = requests.post(api, data=data).json()

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
