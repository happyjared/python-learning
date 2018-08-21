import logging
from logger import log
from elasticsearch import Elasticsearch


class Es(object):
    log.Logger()

    """ Example
    doc_mapping = '''{
      "properties": {
        "tp_id": {
          "type": "integer"
        },
        "city_id": {
          "type": "integer"
        },
        "job_id": {
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
    """

    def __init__(self, host='localhost', port=9200, index=None, doc=None, mapping=None):
        logging.info('Es Init index: %s , document: %s , mapping %s', index, doc, mapping)

        self.els = Elasticsearch(hosts="{0}:{1}".format(host, port))

        ping_res = self.els.ping()
        logging.info('Es Ping : %s', ping_res)

        self.doc = doc
        self.index = index

        if index and not self.els.indices.exists(index=index):
            # 创建Index
            create_index = self.els.indices.create(index=index)
            logging.info('Es create_index : %s', create_index)
        if doc and not self.els.indices.exists_type(index=index, doc_type=doc):
            # 创建Document with mapping
            # @See: http://cwiki.apachecn.org/pages/viewpage.action?pageId=7372806
            put_mapping = self.els.indices.put_mapping(index=index, doc_type=doc, body=mapping)
            logging.info('Es put_mapping : %s', put_mapping)

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

    def put_data(self, data_body, index=None, doc=None, _id=None):
        """ 添加数据到ES
        
        :param data_body: 数据 
        :param index: 索引,可选
        :param doc: 文档,可选
        :param _id: 文档id, 可选
        :return: 
        """

        return self.els.index(index=index if index else self.index,
                              doc_type=doc if doc else self.doc,
                              id=_id, body=data_body)

    def search_id(self, _id, index=None, doc=None):
        """ 根据id查找数据
        
        :param _id: 指定id
        :param index: 索引
        :param doc: 文档
        :return: 
        """

        return self.els.get(index=index if index else self.index,
                            doc_type=doc if doc else self.doc,
                            id=_id)

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

    def search_body(self, body=None, index=None, doc=None):
        """ 自定义DSL查询
        
        :param body: DSL Body 
        :param index: 索引
        :param doc: 文档
        :return: 
        """

        if body is None:
            body = {"query": {"match_all": {}}}
        return self.els.search(index=index if index else self.index,
                               doc_type=doc if doc else self.doc,
                               body=body)

    def remove_id(self, _id, index=None, doc=None):
        """ 删除ES数据

        :param _id: 文档id
        :param index: 索引,可选
        :param doc: 文档,可选
        :return:
        """

        return self.els.delete(index=index if index else self.index,
                               doc_type=doc if doc else self.doc, id=_id)
