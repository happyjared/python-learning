import json
import logging
from elasticsearch import Elasticsearch

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
log = logging.getLogger(__name__)


class Es(object):
    def __init__(self, index, host='localhost', port=9200, doc=None, mapping=None):

        self.els = Elasticsearch(hosts="{0}:{1}".format(host, port))

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

    """ Example
    json_data = {
        'city_id': 2, 
        'location': {
            'lat': 23.1686122210, 
            'lon': 113.4204483032
        },
        'source_from': 1, 
        'keyword': 'xxx'
    }
    """

    def put_data(self, data_body, doc=None, _id=None):
        """ 添加数据到ES
        
        :param data_body: 数据 
        :param doc: 文档,可选
        :param _id: 文档id, 可选
        :return: 
        """

        return self.els.index(index=self.index, doc_type=doc if doc else self.doc, id=_id, body=data_body)

    def search_id(self, search_id, doc=None):
        return self.els.get(index=self.index, doc_type=doc if doc else self.doc, id=search_id)

    """ Example:
    search_body = '''{
      "query": {
        "bool": {
          "must": [
            {
              "match": {
                "city_id": 2
              }
            },
            {
              "match": {
                "source_from": 1
              }
            },
            {
            "match": {
                "keyword": ""
              }
            }
          ],
          "filter": {
            "geo_distance": {
              "distance": "1.9km", 
              "location": { 
                "lat": 23.1680598602,
                "lon": 113.4022521973
              }
            }
          }
        }
      }
    }'''
    """

    def search_body(self, body=None):
        if body is None:
            body = {"query": {"match_all": {}}}
        return self.els.search(index=self.index, doc_type=self.doc, body=body)
