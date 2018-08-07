import csv
import json
import requests

# url = 'http://api.map.baidu.com/geocoder/v2/?address=广州市天河区&output=json&ak=TCLfUCrFQDLWQrzz3NKYBwb8ZY57tgAt'
# resp = requests.get(url)
# print(resp.text)

with open('lagou_python_gz.csv', 'r', encoding='utf-8-sig') as f:
    next(f)
    reader = csv.reader(f)
    for line in reader:
        destination = line[3]
        # print(destination)
        url = 'https://restapi.amap.com/v3/direction/walking?origin=113.4066543211546,23.175756023327354&destination=' + destination + '&key=5f884ed3eaf49f32c8c3fc68737358c4'
        resp = requests.get(url)
        resp_json = json.loads(resp.text)
        # print(resp_json)
        status = resp_json['status']
        if int(status) == 1:
            route = resp_json['route']
            paths = route['paths']
            distance = paths[0]['distance']
            if int(distance) <= 5000:
                print(line[0], line[1], line[2], distance)
