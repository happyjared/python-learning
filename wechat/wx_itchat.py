import os
import math

import itchat
import numpy as np
import PIL.Image as Image
import matplotlib.pyplot as plt

from utils import mat


class WxChat(object):

    def __init__(self):
        """初始化(扫码登录或手机端确认)"""
        itchat.auto_login(hotReload=True)

        # 登录用户
        self.login_user = None
        # 好友总数
        self.num_of_friend = 0
        # 男性好友数
        self.male_num = 0
        # 女性好友数
        self.female_num = 0
        # 未知性别好友数
        self.unknown_gender = 0
        # K=省名 V=人数
        self.num_of_province = {}
        # 未知省份
        self.unknown_province = '其它'
        # 绘图大小
        plt.figure(figsize=(6.4, 4.8))
        # 图片存放文件夹
        self.images_dir = 'wxImages'
        self.avatar_dir = '{}{}{}'.format(self.images_dir, os.sep, "avatarImages")
        if not os.path.exists(self.images_dir):
            os.mkdir(self.images_dir)
            os.mkdir(self.avatar_dir)

    def _reset_data(self):
        """数据重置"""

        self.male_num = 0
        self.female_num = 0
        self.unknown_gender = 0
        self.num_of_province = {}

    def analysis_friends(self):
        """获取好友列表 , 第一个是本人"""
        print("--->开始分析您的好友数据")

        all_user = itchat.get_friends(update=True)
        self.login_user = all_user[0]
        self.num_of_friend = len(all_user) - 1
        friends = all_user[1:]
        for i, friend in enumerate(friends):
            self._count_sex(friend['Sex'])
            self._count_province(friend['Province'])

            nickname = friend['NickName']  # 昵称
            remark = friend['RemarkName']  # 备注
            signature = ''.join(friend['Signature'].split())  # 个性签名
            # city = friend['City'] # 所在城市

            # 下载好友头像(不包括自己)
            avatar_data = itchat.get_head_img(userName=friend["UserName"])
            with open("{}{}{}.jpg".format(self.avatar_dir, os.sep, i), 'wb') as f:
                f.write(avatar_data)

            print("%d.好友昵称: %s ,备注: %s ,个性签名: %s " % (i + 1, nickname, remark, signature))

        print('共有 %d 位微信好友 , 其中男性好友 %d 位,女性好友 %d 位 , %d 位未知性别好友' % (
            self.num_of_friend, self.male_num, self.female_num, self.unknown_gender))

        # 省份数据处理(可选)
        self._handle_province(self.num_of_friend)
        # 绘制性别柱图, 绘制省份饼图(可选)
        title = 'WeChatFriends'
        wx._plt_gender_bar(title), wx._plt_province_pie(title)
        # 将头像拼图(可选)
        self._puzzle_avatar(title)
        self._reset_data()

    def analysis_chat_rooms(self):
        """获取群聊列表"""
        print("--->开始分析您的群聊数据")

        chat_rooms = itchat.get_chatrooms(update=True)
        for chat_room in chat_rooms[:-1]:
            chat_room_name = chat_room['NickName']  # 群聊名称
            user_name = chat_room['UserName']  # 群聊id标志
            room = itchat.update_chatroom(user_name, detailedMember=True)
            member_count = room['MemberCount']  # 群聊人数
            # 群聊用户列表
            for member in room['MemberList']:
                # avatar = 'https://wx.qq.com'.format(member['HeadImgUrl']) # 头像
                self._count_sex(member['Sex'])
                self._count_province(member['Province'])

            print('群聊 %s 共有 %d 人 , 其中 %d 位男性 , %d 位女性 , %d 位性别未知' % (
                chat_room_name, member_count, self.male_num, self.female_num, self.unknown_gender))

            # 省份数据处理(可选)
            self._handle_province(member_count)
            # 绘制性别柱图, 省份饼图(可选)
            self._plt_gender_bar(chat_room_name), self._plt_province_pie(chat_room_name)
            self._reset_data()

    def _count_sex(self, sex):
        """统计性别情况"""

        # 0-未知 , 1-男 , 2-女
        if sex == 1:
            self.male_num += 1
        elif sex == 2:
            self.female_num += 1
        else:
            self.unknown_gender += 1

    def _count_province(self, province_name):
        """统计省份情况"""

        if not province_name or not mat.all_chinese(province_name):
            # 未设置省份名或非国内城市
            other_province_num = self.num_of_province.get(self.unknown_province)
            self.num_of_province.__setitem__(self.unknown_province,
                                             1 if other_province_num is None else other_province_num + 1)
        else:
            province_num = self.num_of_province.get(province_name)
            self.num_of_province.__setitem__(province_name, 1 if province_num is None else province_num + 1)

    def _handle_province(self, member_count):
        """处理所在省份人数占比较低(少于2%)的数据
        :param member_count: 总人数
        """

        for province in list(self.num_of_province.keys()):
            number = self.num_of_province[province]
            if number / member_count < .02:
                other_province_num = self.num_of_province.get(self.unknown_province)
                self.num_of_province.__setitem__(self.unknown_province, other_province_num + number)
                del self.num_of_province[province]

    def _plt_gender_bar(self, title):
        """ 绘制性别柱状图
        :param title: 名称
        """

        plt.bar('男', self.male_num, color='yellow')
        plt.bar('女', self.female_num, color='pink')
        plt.bar('未知', self.unknown_gender, color='gray')
        plt.xlabel('性别'), plt.ylabel('人数'), plt.title(title)
        for a, b in zip([0, 1, 2], np.array([self.male_num, self.female_num, self.unknown_gender])):
            plt.text(a, b, '%.0f' % b, ha='center', va='bottom')
        plt.savefig('{}{}{}(性别统计).png'.format(self.images_dir, os.sep, title))
        plt.show()

    def _plt_province_pie(self, title):
        """ 绘制省份圆饼图
        :param title: 名称
        """

        data = np.array(list(self.num_of_province.values()))
        labels = list(self.num_of_province.keys())
        plt.pie(data, labels=labels, autopct='%.1f%%', )
        plt.axis('equal')
        plt.legend(loc=2, prop={'size': 5.5})
        plt.title(title)
        plt.savefig('{}{}{}(省份分布).png'.format(self.images_dir, os.sep, title))
        plt.show()

    def _puzzle_avatar(self, title='wx'):
        """用pillow拼图"""
        pic_size = 1080  # (正方形)

        avatar_size = int(math.sqrt(float(pic_size * pic_size) / self.num_of_friend))  # 定义头像的尺寸
        lines = int(pic_size / avatar_size) + 1  # 一共要画多少行
        new_image = Image.new('RGB', (pic_size, pic_size))  # 定义空白底图

        x, y = 0, 0  # 起始坐标
        for i in range(0, self.num_of_friend):
            try:
                img = Image.open("{}{}{}.jpg".format(self.avatar_dir, os.sep, i))
            except IOError:
                print("Error: No file or Read file error")
            else:
                img = img.resize((avatar_size, avatar_size), Image.ANTIALIAS)  # 调整原头像大小为定义尺寸
                new_image.paste(img, (x * avatar_size, y * avatar_size))  # 将该头像绘制到底图
                # 改变绘制坐标
                x += 1
                if x == lines:
                    x, y = 0, y + 1

        file_path = '{}{}{}.jpg'.format(self.images_dir, os.sep, title)
        new_image.save(file_path)
        # 发送到手机上(可选)
        self.send_image_to_filehelper(file_path)

    @staticmethod
    def send_msg_to_file_helper(msg):
        """给文件助手发消息"""
        itchat.send(msg, 'filehelper')

    @staticmethod
    def send_image_to_filehelper(img):
        """给文件助手发图片"""
        itchat.send_image(img, 'filehelper')

    @staticmethod
    def get_mps():
        """获取公众号列表"""
        return itchat.get_mps()

    @staticmethod
    def logout():
        """退出登录"""
        itchat.logout()


if __name__ == '__main__':
    wx = WxChat()
    # 分析微信好友
    wx.analysis_friends()
    # 分析微信群聊
    # wx.analysis_chat_rooms()
    wx.logout()
