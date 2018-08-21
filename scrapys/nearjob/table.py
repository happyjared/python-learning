from utils.es import Es
from enum import Enum, unique
from scrapys.nearjob import sql, app


@unique
class SourceType(Enum):
    lagou, boss = 1, 2  # 拉勾, Boss


index_prefix = 'nearjob_'


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

    postgres = app.postgres()
    rows = postgres.fetch_all(sql.get_job())
    for row in rows:
        job_name = row[1]
        index = '{0}{1}'.format(index_prefix, job_name)
        Es(host='localhost', port=12900, index=index, doc=job_name, mapping=doc_mapping)
    postgres.close()


if __name__ == '__main__':
    create_doc_with_mapping()
