from utils.es import Es
from enum import Enum, unique


@unique
class SourceType(Enum):
    lagou = 1  # 拉勾网
    boss = 2  # Boss直聘


class NearJob(object):
    prefix = 'tb_{0}'
    tables = {'0': 'tmp', '1': 'java', '2': 'php', '3': 'python', '4': 'android', '5': 'ios'}

    @staticmethod
    def get_table(type_id):
        return NearJob.prefix.format(NearJob.tables.get(str(type_id)))

    @staticmethod
    def get_all_table():
        for value in NearJob.tables.values():
            yield NearJob.prefix.format(value)

    @staticmethod
    def create_doc_with_mapping():
        """创建ES Document Mapping"""

        doc_mapping = '''{
           "properties": {
             "city_id": {
               "type": "integer"
             },
             "location": {
               "type": "geo_point"
             },
             "source_from": {
               "type": "integer"
             },
             "keyword":{
               "type": "text",
               "analyzer": "ik_max_word",
               "search_analyzer": "ik_max_word"
             }
           }
         }'''

        for k, v in NearJob.tables.items():
            if int(k) == 0:
                continue
            else:
                Es(host='localhost', port=12200, index='nearjob', doc=v, mapping=doc_mapping)
