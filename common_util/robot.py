import requests


# 获取文本消息回应
def get_text_response(msg, user_id, key='6ad11c98a4da4cb986ff1d2d83b49347'):
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
