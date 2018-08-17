import requests
from utils import pgs

nearjob = 'nearjob'
postgres = pgs.Pgs(host='localhost', port=12432, db_name=nearjob, user=nearjob, password=nearjob)


def get_city():
    """获取Boss直聘城市数据"""

    api = 'https://www.zhipin.com/common/data/city.json'
    resp = requests.get(api).json()
    code = resp.get('rescode')
    if code == 1:  # 请求成功
        data = resp['data']
        # locationCity cityList
        hot_city_list = data['hotCityList']
        for hot_city in hot_city_list:
            code = hot_city['code']
            name = hot_city['name']


def get_position():
    """获取Boss直聘岗位数据"""

    api = 'https://www.zhipin.com/common/data/position.json'
    resp = requests.get(api).json()
    code = resp.get('rescode')
    if code == 1:
        data_list = resp['data']
        for data in data_list:
            data_code = data['code']
            data_name = data['name']
            one_id = postgres.handler(sql_position(), (data_code, data_name, 0, 0), fetch=True)
            model_list = data['subLevelModelList']
            for model in model_list:
                model_code = model['code']
                model_name = model['name']
                two_id = postgres.handler(sql_position(), (model_code, model_name, one_id, 0), fetch=True)
                sub_model_list = model['subLevelModelList']
                for sub_model in sub_model_list:
                    sub_model_code = sub_model['code']
                    sub_model_name = sub_model['name']
                    postgres.handler(sql_position(), (sub_model_code, sub_model_name, two_id, one_id))


def sql_position():
    sql = 'insert into tb_boss_position(code,"name",primary_parent,secondary_parent) ' \
          'values(%s,%s,%s,%s) returning id'

    return sql


if __name__ == '__main__':
    get_position()
    postgres.close()
