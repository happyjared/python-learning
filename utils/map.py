import requests

ak = 'TCLfUCrFQDLWQrzz3NKYBwb8ZY57tgAt'


def getApi(address):
    api = 'http://api.map.baidu.com/geocoder/v2/?address={0}&output=json&ak={1}'
    return api.format(address, ak)


def geocoder(address):
    """ 百度API:地理编码 -> 地址数据转换为坐标点（经纬度）
    See http://lbsyun.baidu.com/index.php?title=webapi/guide/webservice-geocoding
    :param address: 地址数据
    :return: 坐标点（经纬度）
    """

    api = 'http://api.map.baidu.com/geocoder/v2/?address={0}&output=json&ak={1}'
    resp = requests.get(api.format(address, ak)).json()
    status = resp['status']
    if 0 == status:
        result = resp['result']
        location = result['location']
        lng = location['lng']  # 经度
        lat = location['lat']  # 纬度
