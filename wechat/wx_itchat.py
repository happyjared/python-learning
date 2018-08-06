import itchat
import numpy as np
import matplotlib.pyplot as plt
from utils import mat


class WxChat(object):
    """
        初始化 , 需扫码登录
    """

    def __init__(self):
        itchat.auto_login(hotReload=True)
        # 当前登录用户
        self.login_user = None
        # 好友总人数
        self.friendsNum = 0
        # 男性好友人数
        self.maleNum = 0
        # 女性好友人数
        self.femaleNum = 0
        # 未知性别好友人数
        self.unknownNum = 0
        # K=省份名 V=人数
        self.provinces = {}
        self.otherProvince = 'Other'
        # 绘图大小
        plt.figure(figsize=(6.4, 4.8))

    """
        数据重置
    """

    def reload_data(self):
        # 男性好友人数
        self.maleNum = 0
        # 女性好友人数
        self.femaleNum = 0
        # 未知性别好友人数
        self.unknownNum = 0
        # K=省份名 V=人数
        self.provinces = {}

    """
        给文件助手发消息
    """

    @staticmethod
    def send_file_helper(msg):
        itchat.send(msg, toUserName='filehelper')

    """
        获取好友列表 , 第一个是本人
    """

    def get_friends(self):
        all_user = itchat.get_friends()
        self.login_user = all_user[0]
        self.friendsNum = len(all_user) - 1
        friends = all_user[1:]
        for i, friend in enumerate(friends):
            self.count_sex(friend['Sex'])
            self.count_province(friend['Province'])
            # 昵称
            nickname = friend['NickName']
            # 备注
            remark = friend['RemarkName']
            # city = friend['City']
            # alias = friend['Alias']
            signature = ''.join(friend['Signature'].split())
            head_img_url = 'https://wechat.qq.com' + friend['HeadImgUrl']
            print("%d.昵称: %s ,备注: %s ,个性签名: %s ,头像: %s " % (
                i + 1, nickname, remark, signature, head_img_url))

        print('共有 %d 位微信好友 , 其中 %d 位男性好友 , %d 位女性好友 , %d 位未知性别好友' % (
            self.friendsNum, self.maleNum, self.femaleNum, self.unknownNum))

        # 绘制柱图
        self.gender_bar('Friends Sex Ratio')
        # 数据处理
        self.handle_province(self.friendsNum)
        # 绘制饼图
        self.province_pie('Friends Province Ratio')

    """
        获取群聊列表
    """

    def get_chat_rooms(self):
        chat_rooms = itchat.get_chatrooms(update=True)
        for chat_room in chat_rooms[:-1]:
            # 群聊名称
            chat_room_name = chat_room['NickName']
            # 群聊标志
            user_name = chat_room['UserName']
            room = itchat.update_chatroom(user_name, detailedMember=True)
            # 群聊人数
            member_count = room['MemberCount']
            # 群聊用户详情
            for member in room['MemberList']:
                # 头像
                # headImgUrl = 'https://wx.qq.com' + member['HeadImgUrl']
                self.count_sex(member['Sex'])
                self.count_province(member['Province'])

            print('群聊 %s 共有 %d 人 , 其中 %d 位男性 , %d 位女性 , %d 位性别未知' % (
                chat_room_name, member_count, self.maleNum, self.femaleNum, self.unknownNum))

            # 绘制柱图
            self.gender_bar(chat_room_name)
            # 数据处理
            self.handle_province(member_count)
            # 绘制饼图
            self.province_pie(chat_room_name)
            self.reload_data()

    """
        处理所在省份人数占比较低的数据
    """

    def handle_province(self, member_count):
        for k in list(self.provinces.keys()):
            v = self.provinces[k]
            if v / member_count < .02:
                other_province_num = self.provinces.get(self.otherProvince)
                self.provinces.__setitem__(self.otherProvince, other_province_num + v)
                del (self.provinces[k])

    """
        统计性别情况
    """

    def count_sex(self, sex):
        # 0-未知 , 1-男 , 2-女
        if sex == 1:
            self.maleNum += 1
        elif sex == 2:
            self.femaleNum += 1
        else:
            self.unknownNum += 1

    """
        统计省份情况
    """

    def count_province(self, province_name):
        if not province_name or not mat.all_chinese(province_name):
            # 未设置省份名或非国内城市
            other_province_num = self.provinces.get(self.otherProvince)
            self.provinces.__setitem__(self.otherProvince,
                                       1 if other_province_num is None else other_province_num + 1)
        else:
            province_num = self.provinces.get(province_name)
            self.provinces.__setitem__(province_name, 1 if province_num is None else province_num + 1)

    """
        获取公众号
    """

    @staticmethod
    def get_mps():
        mps = itchat.get_mps()
        print(mps)

    """
        退出登录
    """

    @staticmethod
    def logout():
        itchat.logout()

    """
         绘制性别柱状图
     """

    def gender_bar(self, title):
        plt.bar('男', self.maleNum, color='yellow')
        plt.bar('女', self.femaleNum, color='pink')
        plt.bar('未知', self.unknownNum, color='gray')
        plt.xlabel('性别')
        plt.ylabel('人数')
        plt.title(title)
        for a, b in zip([0, 1, 2], np.array([self.maleNum, self.femaleNum, self.unknownNum])):
            plt.text(a, b, '%.0f' % b, ha='center', va='bottom')
        plt.savefig(title + '-gender.png')
        plt.show()

    """
        绘制省份圆饼图
    """

    def province_pie(self, title):
        data = np.array(list(self.provinces.values()))
        labels = list(self.provinces.keys())
        plt.pie(data, labels=labels, autopct='%.1f%%', )
        plt.axis('equal')
        plt.legend(loc=2, prop={'size': 5.5})
        plt.title(title)
        plt.savefig(title + '-province.png')
        plt.show()


if __name__ == '__main__':
    wx = WxChat()
    # wechat.send_file_helper('Hello, File Helper')
    # wechat.get_mps()
    # wechat.logout()
    # wechat.get_friends()
    wx.get_chat_rooms()
