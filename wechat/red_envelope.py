import itchat
from itchat.content import NOTE


@itchat.msg_register(NOTE, isGroupChat=True)
def receive_red_packet(msg):
    content = msg['Content']
    print(content)
    if "收到红包" in content or '收到利是' in content:
        groups = itchat.get_chatrooms(update=True)
        chatroom = itchat.search_chatrooms(name='9012')
        user_name = chatroom[0]['UserName']
        group_name = ''
        for group in groups:
            if msg['FromUserName'] == group['UserName']:
                group_name = group['NickName']
        msg = 'Tip: 群 “{}” 有人正在发红包...'.format(group_name)
        itchat.send(msg, toUserName=user_name)


itchat.auto_login(hotReload=True, enableCmdQR=2)
itchat.run()
