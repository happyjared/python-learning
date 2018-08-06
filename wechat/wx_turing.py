import robot
import random
import itchat
from utils import mat
from itchat.content import *

switch = {}
cmd = '管家'
jared = '贾里德'
hello = "[愉快] 您好, 管家\"贾里德\"为你服务 ☺"
bye = '[流淚] Bye. This is Jared [再见]'
my_nickname = 'Jared Qiu'


@itchat.msg_register(itchat.content.TEXT)
def reply(msg):
    """注册微信文本消息
    
    :param msg: 消息
    :return: 回应消息
    """
    receive_text = msg['Text']
    print('Call: ' + receive_text, end='')

    to_user_id = msg['ToUserName']  # 接收人
    to_user_nickname = msg.User.NickName  # 接收人昵称
    print(to_user_nickname)
    from_user_id = msg['FromUserName']  # 发送人
    if my_nickname != to_user_nickname and receive_text == cmd:
        # 用户控制机器人开关
        if switch.get(from_user_id) is None:
            switch[from_user_id] = True
        else:
            switch[from_user_id] = not switch[from_user_id]
        return hello if switch[from_user_id] else bye
    if my_nickname == to_user_nickname and receive_text == jared:
        # 自己控制机器人
        if switch.get(to_user_id) is None:
            switch[to_user_id] = True
        else:
            switch[to_user_id] = not switch[to_user_id]
        itchat.send_msg(hello, to_user_id) if switch[to_user_id] else itchat.send_msg(bye, to_user_id)

    print('----------' + str(switch))
    flag = switch.get(from_user_id) or switch.get(to_user_id)

    # 判断是否开启机器对话
    if flag:
        if mat.is_emoji(receive_text):
            reply_text = random.randint(1, 3) * receive_text
            print(' Back: ' + reply_text)
            return reply_text
        else:
            # 默认回复
            default_reply = 'I received: ' + receive_text
            text = robot.call_text(receive_text, from_user_id)
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
