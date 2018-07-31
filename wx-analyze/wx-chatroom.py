import itchat

# 登录
itchat.auto_login(hotReload=True)

# 群聊
chat_rooms = itchat.get_chatrooms(update=True)

for chat_room in chat_rooms[:-1]:
    maleNum = 0
    femaleNum = 0
    unknownNum = 0
    user_name = chat_room['UserName']
    room = itchat.update_chatroom(user_name, detailedMember=True)

    for member in room['MemberList']:
        # 0-未知 , 1-男 , 2-女
        sex = member['Sex']
        if sex == 0:
            unknownNum += 1
        elif sex == 1:
            maleNum += 1
        elif sex == 2:
            femaleNum += 1
        headImgUrl = 'https://wx.qq.com' + member['HeadImgUrl']
    print('群聊 %s 共有 %d 人 , 其中 %d 位男性 , %d 位女性 , %d 位性别未知' % (
        chat_room['NickName'], room['MemberCount'], maleNum, femaleNum, unknownNum))
