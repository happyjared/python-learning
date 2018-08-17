import json
import logging
from elasticsearch import Elasticsearch

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
log = logging.getLogger(__name__)


class Es(object):

    def __init__(self, index, host='localhost', port=9200, doc=None, mapping=None):
        self.els = Elasticsearch(hosts="{0}{1}".format(host, port))

        ping_res = self.els.ping()
        log.info('Es Ping : %s', ping_res)

        self.doc = doc
        self.index = index
        log.info('Es Init index: %s , document: %s , mapping %s', index, doc, mapping)
        if not self.els.indices.exists(index=index):
            create_index = self.els.indices.create(index=index)
            log.info('Es create_index : %s', create_index)
        if doc and not self.els.indices.exists_type(index=index, doc_type=doc):
            # @See: http://cwiki.apachecn.org/pages/viewpage.action?pageId=7372806
            put_mapping = self.els.indices.put_mapping(index=index, doc_type=doc, body=mapping)
            log.info('Es put_mapping : %s', put_mapping)

    def put_data(self, data_body, _id=None):
        return self.els.index(index=self.index, doc_type=self.doc, id=_id, body=data_body)

    def search_id(self, search_id):
        return self.els.get(index=self.index, doc_type=self.doc, id=search_id)

    def search_body(self, body=None):
        if body is None:
            body = {"query": {"match_all": {}}}
        return self.els.search(index=self.index, doc_type=self.doc, body=body)


if __name__ == '__main__':
    # keyword [job_name job_advantage company_industry company_zone]
    # @See https://github.com/elastic/elasticsearch/issues/21134
    # _id is not configurable @See https://discuss.elastic.co/t/elsticsearch5-6-id-is-not-configurable/115496
    doc_mapping = '''{
      "properties": {
        "id": {
          "type": "integer",
          "index": "false"
        },
        "city_id": {
          "type": "integer",
          "index": "false"
        },
        "location": {
          "type": "geo_point",
          "index": "false"  
        },
        "source_from": {
          "type": "integer",
          "index": "false"
        },
        "keyword":{
          "type": "text",
          "analyzer": "ik_max_word",
          "search_analyzer": "ik_max_word"
        }
      }
    }'''
    es = Es(index='nearjob', doc='java', mapping=doc_mapping)

    json_data = {'id': 1, 'city_id': 2, 'location': {"lat": 23.1685333125, "lon": 113.4021878242},
                 "source_from": 0, "keyword": "中国驻洛杉矶领事馆遭亚裔男子枪击 嫌犯已自首"}
    log.info(es.put_data(data_body=json_data, _id=3))

    search_body = '''{
      "query": {
        "bool": {
          "filter": {
            "geo_distance": {
              "distance": "3.48km", 
              "location": { 
                "lat": 23.1644100000,
                "lon": 113.4358400000
              }
            }
          }
        }
      }
    }
    '''
    resp = es.search_body(search_body)
    log.info(resp)
    log.info(type(resp))  # Dict
