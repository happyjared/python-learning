import requests

"""
百度API:地理编码 -> 地址数据转换为坐标点（经纬度）
See http://lbsyun.baidu.com/index.php?title=webapi/guide/webservice-geocoding
"""

default_coord_type = 'gcj02ll'  # gcj02ll（国测局坐标）、bd09mc（百度墨卡托坐标）
ak = 'TCLfUCrFQDLWQrzz3NKYBwb8ZY57tgAt'
api = 'https://api.map.baidu.com/geocoder/v2/?address={}&ret_coordtype={}&ak={}&output=json'
api2 = 'https://api.map.baidu.com/geocoder/v2/?location={},{}&ak={}&output=json'


def getApi(address, coord_type=default_coord_type):
    """

    :param address: 地理位置
    :param coord_type: 坐标类型
    :return: 返回请求地址
    """
    return api.format(address, coord_type, ak)


def reqApi(address):
    """ 请求转换接口
    :param address: 地理位置
    :return: 坐标点（经纬度）
    """

    resp = requests.get(getApi(address)).json()
    status = resp['status']
    if 0 == status:
        res = resp['result']
        loc = res['location']
        # 经纬度
        return loc['lng'], loc['lat']
    else:
        return None, None


def reqAddress(lat, lng):
    resp = requests.get(api2.format(lat, lng, ak)).json()
    status = resp.get('status')
    if 0 == status:
        res = resp['result']
        formatted_address = res.get('formatted_address')
        sematic_description = res.get('sematic_description')
        address = '{}({})'.format(formatted_address, sematic_description)
        return address
