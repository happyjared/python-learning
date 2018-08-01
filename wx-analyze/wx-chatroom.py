import itchat
import numpy as np
import matplotlib.pyplot as plt

# 登录
itchat.auto_login(hotReload=True)

# 群聊
chat_rooms = itchat.get_chatrooms(update=True)


def all_chinese(province_name):
    return u'\u4e00' <= province_name <= u'\u9fff'


for chat_room in chat_rooms[:-1]:
    maleNum = 0
    femaleNum = 0
    unknownNum = 0
    provinces = {}
    otherProvince = '其它'
    user_name = chat_room['UserName']
    chat_room_name = chat_room['NickName']
    room = itchat.update_chatroom(user_name, detailedMember=True)
    member_count = room['MemberCount']

    for member in room['MemberList']:
        # 0-未知 , 1-男 , 2-女
        sex = member['Sex']
        if sex == 0:
            unknownNum += 1
        elif sex == 1:
            maleNum += 1
        elif sex == 2:
            femaleNum += 1
        # headImgUrl = 'https://wx.qq.com' + member['HeadImgUrl']
        province = member['Province']
        # 未设置省份名或省份名为非国内城市
        if not province or not all_chinese(province):
            otherProvinceNum = provinces.get(otherProvince)
            provinces.__setitem__(otherProvince, 1 if otherProvinceNum is None else otherProvinceNum + 1)
        else:
            provinceNum = provinces.get(province)
            provinces.__setitem__(province, 1 if provinceNum is None else provinceNum + 1)
    print('群聊 %s 共有 %d 人 , 其中 %d 位男性 , %d 位女性 , %d 位性别未知' % (
        chat_room_name, member_count, maleNum, femaleNum, unknownNum))

    # if chat_room_name == 'Java星际实验室':
    # 5.数据展示
    plt.figure(figsize=(6.4, 4.8))
    plt.bar('男', maleNum, color='yellow')
    plt.bar('女', femaleNum, color='pink')
    plt.bar('未知', unknownNum, color='gray')
    plt.xlabel('性别')
    plt.ylabel('人数')
    plt.title(chat_room_name)
    for a, b in zip([0, 1, 2], np.array([maleNum, femaleNum, unknownNum])):
        plt.text(a, b, '%.0f' % b, ha='center', va='bottom')
    plt.savefig(chat_room_name + '-gender.png')
    plt.show()

    for k in list(provinces.keys()):
        v = provinces[k]
        if v / member_count < .02:
            otherProvinceNum = provinces.get(otherProvince)
            provinces.__setitem__(otherProvince, otherProvinceNum + v)
            del (provinces[k])

    data = np.array(list(provinces.values()))
    plt.figure(figsize=(6.4, 4.8))
    plt.pie(data, labels=list(provinces.keys()), autopct='%.1f%%', )
    plt.axis('equal')
    plt.legend(loc=2, prop={'size': 5.5})
    plt.title(chat_room_name)
    plt.savefig(chat_room_name + '-province.png')
    plt.show()
