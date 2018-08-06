import robot
import random
import itchat
from utils import mat
from itchat.content import *

switch = {}
command = '666'


@itchat.msg_register(itchat.content.TEXT)
def reply(msg):
    """注册微信文本消息
    
    :param msg: 消息
    :return: 回应消息
    """

    receive_text = msg['Text']
    print('Call: ' + receive_text, end='')

    user_id = msg['FromUserName']
    # 判断机器人开关
    if receive_text == command:
        if switch.get(user_id) is None:
            switch[user_id] = True
        else:
            switch[user_id] = not switch[user_id]
        return "[愉快] Hello. 私人管家 贾里得 上线了 !" if switch[user_id] else '[再见] Bye. Please Remember Jared'
    flag = switch.get(user_id)

    #  判断是否开启机器对话
    if flag:
        if mat.is_emoji(receive_text):
            reply_text = random.randint(1, 3) * receive_text
            print(' Back: ' + reply_text)
            return reply_text
        else:
            # 默认回复
            default_reply = 'I received: ' + receive_text
            text = robot.call_text(receive_text, user_id)
            # a or b 如果a有内容(非空或者非None)，那么返回a，否则返回b
            return text or default_reply


@itchat.msg_register([MAP, CARD, NOTE, SHARING, PICTURE, RECORDING, ATTACHMENT, VIDEO, FRIENDS])
def reply(msg):
    """注册除文本外的其它类型消息
    
    :param msg: 消息
    :return: 回应内容
    """

    msg_type = msg['Type']
    filename = msg['FileName']
    content = msg['Content']
    print('Type: %s , FileName: %s , Content: %s' % (msg_type, filename, content))
    default_reply = "[疑问] Is't a " + msg_type
    return default_reply


# 登录微信机器人
itchat.auto_login(hotReload=True, enableCmdQR=2)
itchat.run()

# # 注册微信语音消息
# @itchat.msg_register(itchat.content.RECORDING)
# def reply(msg):
#     file = msg['FileName']
#     path = 'voices/' + file
#     msg['Text'](path)
#     default_reply = 'I received recording : ' + file
#     print('2.Call: ' + file, end='')
#     text = tuling.get_text_response(transfer_record(path), msg['FromUserName'])
#     # a or b的意思是，如果a有内容(非空或者非None)，那么返回a，否则返回b
#     return text or default_reply
#
#
# # 读取本地文件
# def get_file_content(file_path):
#     with open(file_path, 'rb') as fp:
#         return fp.read()
#
#
# # 通过百度AI将语音消息转换为文本消息
# def transfer_record(path):
#     app_id = '11618209'
#     api_key = 'Mva5lMkVyUSzNta0f4G7Dt4K'
#     secret_key = 'aAwUgOKPzYPgnrzAeRl2G0F5EZg6r70d'
#
#     client = AipSpeech(app_id, api_key, secret_key)
#     # 识别本地文件
#     result = client.asr(get_file_content(path))
#     err_no = result['err_no']
#     print(' Code: ' + str(err_no), end='')
#     return result['result'] if err_no == 0 else result['err_msg']
