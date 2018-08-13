import random
import itchat
from utils import mat
from utils import rds
from utils import robot

redis = rds.Rds(port=12379, db=15, password='redis6379').redis_cli

key = 'turing:{0}'
cmd = redis.get(key.format('cmd'))
jared = redis.get(key.format('jared'))
hello = redis.get(key.format('hello'))
bye = redis.get(key.format('bye'))
ex = int(redis.get(key.format('ex')))


@itchat.msg_register(itchat.content.TEXT)
def reply(msg):
    """注册微信文本消息
    
    :param msg: 消息
    :return: 回应消息
    """
    receive_text = msg['Text']
    print('Call: ' + receive_text, end='')

    to_user_id = msg['ToUserName']  # 接收人
    from_user_id = msg['FromUserName']  # 发送人
    if receive_text == cmd:
        # 用户控制机器人开关
        switch = redis.get(from_user_id)
        if switch:
            # True -> None
            redis.delete(from_user_id)
        else:
            # None -> True
            redis.set(from_user_id, True, ex=ex)
        return bye if switch else hello
    if receive_text == jared:
        # 自己控制机器人
        switch = redis.get(to_user_id)
        if switch:
            redis.delete(to_user_id)
        else:
            redis.set(to_user_id, True, ex=ex)
        itchat.send_msg(bye, to_user_id) if switch else itchat.send_msg(hello, to_user_id)

    flag = redis.get(from_user_id)

    # 判断是否开启机器对话
    if flag:
        if redis.ttl(from_user_id) <= int(redis.get(key.format('min:ex'))):
            # 倒计时10分钟内还在聊天，延长Key过期时间
            redis.set(from_user_id, True, ex=ex)
        if mat.is_emoji(receive_text):
            reply_text = random.randint(1, 3) * receive_text
            print(' Back: ' + reply_text)
            return reply_text
        else:
            # 默认回复
            default_reply = 'I received: ' + receive_text
            text = robot.call_text_v2(receive_text, from_user_id)
            # a or b 如果a有内容(非空或者非None)，那么返回a，否则返回b
            return text or default_reply


# 登录微信机器人
itchat.auto_login(hotReload=True, enableCmdQR=2)
itchat.run()
