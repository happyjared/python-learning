import requests

ak = 'TCLfUCrFQDLWQrzz3NKYBwb8ZY57tgAt'


def getApi(address, coord_type='gcj02ll'):
    # gcj02ll（国测局坐标）、bd09mc（百度墨卡托坐标）
    api = 'https://api.map.baidu.com/geocoder/v2/?address={0}&ret_coordtype={1}&ak={2}&output=json'
    return api.format(address, coord_type, ak)


def geocoder(address, coord_type='gcj02ll'):
    """ 百度API:地理编码 -> 地址数据转换为坐标点（经纬度）
    See http://lbsyun.baidu.com/index.php?title=webapi/guide/webservice-geocoding
    :param address: 地址数据
    :param coord_type: 坐标类型
    :return: 坐标点（经纬度）
    """

    api = 'https://api.map.baidu.com/geocoder/v2/?address={0}&ret_coordtype={1}&ak={2}&output=json'
    resp = requests.get(api.format(address, coord_type, ak)).json()
    status = resp['status']
    if 0 == status:
        result = resp['result']
        location = result['location']
        lng = location['lng']  # 经度
        lat = location['lat']  # 纬度
