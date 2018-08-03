import json
import requests


# POST带header , json请求
def req_post_json(url, data=None, header=None):
    if data is None:
        data = {}
    resp = requests.post(url, json=data, headers=header)
    resp_text = resp.text
    result = json.loads(resp_text)
    print(url)
    # print(resp_text, end='\n\n')
    return result
