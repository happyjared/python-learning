import random
import itchat
import requests
from aip import AipSpeech

switch = {}
command = '666'
key = '6ad11c98a4da4cb986ff1d2d83b49347'


# 判断消息是否为表情
def is_emoji(text):
    return text.startswith('[') and text.endswith(']')


# 注册微信文本消息
@itchat.msg_register(itchat.content.TEXT)
def reply(msg):
    receive_text = msg['Text']
    print('1.Call: ' + receive_text, end='')

    user_id = msg['FromUserName']
    # 判断机器人开关
    if receive_text == command:
        if switch.get(user_id) is None:
            switch[user_id] = True
        else:
            switch[user_id] = not switch[user_id]
        return "[愉快] Hello. This is Jared. [愉快]" if switch[user_id] else '[再见] Bye. Please Remember Jared.'
    flag = switch.get(user_id)

    #  判断是否开启机器对话
    if flag:
        if is_emoji(receive_text):
            reply_text = random.randint(1, 3) * receive_text
            print(' Back: ' + reply_text)
            return reply_text
        else:
            # 默认回复
            default_reply = 'I received: ' + receive_text
            text = get_text_response(receive_text, user_id)
            # a or b的意思是，如果a有内容(非空或者非None)，那么返回a，否则返回b
            return text or default_reply


# 获取文本消息回应
def get_text_response(msg, user_id):
    # 构造要发送给图灵服务器的数据
    api = 'http://www.tuling123.com/openapi/api'
    data = {
        'key': key,
        'info': msg,
        'userid': user_id,
    }
    try:
        resp = requests.post(api, data=data).json()
        # 字典的get方法在字典没有'text'值的时候会返回None而不会抛出异常
        reply_text = resp.get('text')
        print(' Back: ' + reply_text)
        return reply_text
    # 为了防止服务器没有正常响应导致程序异常退出，这里用try-except捕获了异常
    # 如果服务器没能正常交互（返回非json或无法连接），那么就会进入下面的return并返回一个None
    except:
        return


# 注册微信语音消息
@itchat.msg_register(itchat.content.RECORDING)
def reply(msg):
    file = msg['FileName']
    path = 'voices/' + file
    msg['Text'](path)
    default_reply = 'I received recording : ' + file
    print('2.Call: ' + file, end='')
    text = get_text_response(transfer_record(path), msg['FromUserName'])
    # a or b的意思是，如果a有内容(非空或者非None)，那么返回a，否则返回b
    return text or default_reply


# 读取本地文件
def get_file_content(file_path):
    with open(file_path, 'rb') as fp:
        return fp.read()


# 通过百度AI将语音消息转换为文本消息
def transfer_record(path):
    app_id = '11618209'
    api_key = 'Mva5lMkVyUSzNta0f4G7Dt4K'
    secret_key = 'aAwUgOKPzYPgnrzAeRl2G0F5EZg6r70d'

    client = AipSpeech(app_id, api_key, secret_key)
    # 识别本地文件
    result = client.asr(get_file_content(path))
    err_no = result['err_no']
    print(' Code: ' + str(err_no), end='')
    return result['result'] if err_no == 0 else result['err_msg']


# 登录微信机器人
itchat.auto_login(hotReload=True, enableCmdQR=2)
itchat.run()
