from utils.es import Es
from enum import Enum, unique


@unique
class SourceType(Enum):
    lagou, boss = 1, 2  # 拉勾网, Boss直聘


class NearJob(object):
    prefix = 'tb_{0}'
    jobs = {'0': 'tmp', '1': 'java', '2': 'php', '3': 'python', '4': 'android', '5': 'ios'}

    @staticmethod
    def get_table(type_id):
        sql = 'SELECT "table_name" FROM information_schema.tables ' \
              'where table_schema="public" and "table_name" like "%tb_%"'
        return NearJob.prefix.format(NearJob.jobs.get(str(type_id)))

    @staticmethod
    def get_all_table():
        for value in NearJob.jobs.values():
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

        index_prefix = 'nearjob_'
        for p_id, type_name in NearJob.jobs.items():
            if int(p_id) != 0:
                index = '{0}{1}'.format(index_prefix, type_name)
                Es(host='localhost', port=12900, index=index, doc=type_name, mapping=doc_mapping)


if __name__ == '__main__':
    NearJob.create_doc_with_mapping()
