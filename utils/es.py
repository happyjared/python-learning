import elasticsearch
from datetime import datetime

els = elasticsearch.Elasticsearch(hosts="xxxx:12200")

# print(els.ping())
# print(els.info())
# # print(els.indices.create(index='index1'))
# print(els.index(index="index1", doc_type="type1", id=3, body={"any": "data01", "timestamp": datetime.now()}))
# print(els.get(index="index1", doc_type="type1", id=1))
# print(els.search(index="index1", body={"query": {"match_all": {}}}))

# print(els.indices.create(index='index2'))
mapping = '''
{
  "mappings": {
    "restaurant": {
      "properties": {
        "title": {
          "type": "text"
        },
        "location": {
          "type": "geo_point"
        }
      }
    }
  }
}'''
# print(els.indices.put_mapping(index='index2', doc_type="restaurant", body=mapping))


# print(els.index(index="index4", doc_type="restaurant", body={"title": "100", "location": "23.174648, 113.363468"}))

body = '''{
  "query": {
    "bool": {
      "filter": {
        "geo_distance": {
          "distance": "3.5km", 
          "location": { 
            "lat": 23.179166,
            "lon": 113.396526
          }
        }
      }
    }
  }
}
'''
print(els.search(index="index4", doc_type="restaurant", body=body))
