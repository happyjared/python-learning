import itchat
import numpy as np
import matplotlib.pyplot as plt

# 1.登录微信
itchat.auto_login(hotReload=True)

chat_rooms = itchat.get_chatrooms(update=True)
for room in chat_rooms:
    print(room['MemberCount'])

# 2.获取好友列表，第一个是本人
friends = itchat.get_friends()
loginUser = friends[0]
print('欢迎 %s 登录 , 个性签名: %s' % (loginUser['NickName'], loginUser['Signature']))
friendsNum = len(friends) - 1


def all_chinese(province_name):
    return u'\u4e00' <= province_name <= u'\u9fff'


# 3.遍历，获取性别、签名等信息
maleNum = 0
femaleNum = 0
unknownNum = 0
provinces = {}
otherProvince = '其它'
for index, friend in enumerate(friends[1:]):
    # 0-未知 , 1-男 , 2-女
    sex = friend['Sex']
    if sex == 0:
        unknownNum += 1
    elif sex == 1:
        maleNum += 1
    elif sex == 2:
        femaleNum += 1
    nickname = friend['NickName']
    remarkName = friend['RemarkName']
    province = friend['Province']
    # 未设置省份名或省份名为非国内城市
    if not province or not all_chinese(province):
        otherProvinceNum = provinces.get(otherProvince)
        provinces.__setitem__(otherProvince, 1 if otherProvinceNum is None else otherProvinceNum + 1)
    else:
        provinceNum = provinces.get(province)
        provinces.__setitem__(province, 1 if provinceNum is None else provinceNum + 1)

    city = friend['City']
    alias = friend['Alias']
    signature = friend['Signature'].replace(' ', '')
    headImgUrl = 'https://wx.qq.com' + friend['HeadImgUrl']
    print("%d.好友昵称: %s ,备注: %s ,来自: %s%s%s ,个性签名: %s ,个性头像: %s " % (
        index + 1, nickname, remarkName, province, city, alias, signature, headImgUrl))

print('一共有 %d 位微信好友 , 其中 %d 位男性好友 , %d 位女性好友 , %d 位未知性别好友' % (friendsNum, maleNum, femaleNum, unknownNum))

# 4.退出微信
itchat.logout()

# 5.数据展示
plt.bar('男', maleNum)
plt.bar('女', femaleNum)
plt.bar('未知', unknownNum)
plt.xlabel('性别')
plt.ylabel('人数')
plt.title('WeChat Friends Sex Ratio')
plt.show()

data = np.array(list(provinces.values()))
plt.pie(data, labels=list(provinces.keys()), autopct='%1.1f%%')
plt.axis('equal')
plt.legend()
plt.show()
