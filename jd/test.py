import json
import redis
import requests
from datetime import datetime
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, String, Integer, TIMESTAMP, FLOAT, create_engine

ak = 'TCLfUCrFQDLWQrzz3NKYBwb8ZY57tgAt'
api2 = 'https://api.map.baidu.com/geocoder/v2/?location={},{}&ak={}&output=json'

host = 'localhost'
pool = redis.ConnectionPool(host=host, port=12379, db=6, password='redis6379', decode_responses=True)
redis_cli = redis.Redis(connection_pool=pool)

# 对象基类:
Base = declarative_base()


class Post(Base):
    __tablename__ = 'tb_post'

    id = Column(Integer, primary_key=True, autoincrement=True)
    post_id = Column(Integer)
    post_type = Column(String(10))
    weather = Column(String(10))
    content = Column(String(1000))
    author_id = Column(String(50))
    signature = Column(String(50))
    come_from = Column(String(20))
    create_time = Column(TIMESTAMP)
    latitude = Column(FLOAT)
    longitude = Column(FLOAT)
    address = Column(String(100))
    avatar_name = Column(String(30))


class Attachment(Base):
    __tablename__ = 'tb_attachment'

    id = Column(Integer, primary_key=True, autoincrement=True)
    attachment_id = Column(Integer)
    attachment_type = Column(String(10))
    file_url = Column(String(255))
    file_format = Column(String(10))
    file_width = Column(Integer)
    file_height = Column(Integer)
    file_duration = Column(Integer)
    post_id = Column(Integer)


args = ('soulsquare',) * 3
conn = "postgresql+psycopg2://{}:{}@" + host + ":12432/{}".format(*args)
engine = create_engine(conn, encoding='UTF-8')

# 创建session对象
Session = sessionmaker(bind=engine)
session = Session()


def timestamp_to_datetime(timestamp):
    if len(str(timestamp)) == 13:
        timestamp = timestamp / 1000  # 毫秒时间戳转秒
    return datetime.fromtimestamp(timestamp)


def reqAddress(lat, lng):
    resp = requests.get(api2.format(lat, lng, ak)).json()
    status = resp.get('status')
    if 0 == status:
        res = resp['result']
        description = res.get('sematic_description')
        formatted_address = res.get('formatted_address')
        address = '{}({})'.format(formatted_address, description)
        return address


def handle(post):
    post_id = post.get('id')
    key = "soul:id:{}".format(str(post_id)[-3:])
    if not redis_cli.sismember(key, post_id):
        post_type = post.get('type')
        weather = post.get('weather')
        author_id = post.get('authorIdEcpt')
        signature = post.get('signature')
        come_from = post.get('comeFrom')
        content = post.get('content')
        create_time = timestamp_to_datetime(post.get('createTime'))
        latitude = post.get('latitude')
        longitude = post.get('longitude')
        avatar_name = post.get('avatarName')
        address = ''
        if latitude:
            address = reqAddress(latitude, longitude)
        p = Post(post_id=post_id, post_type=post_type, weather=weather, author_id=author_id,
                 signature=signature, come_from=come_from, content=content, create_time=create_time,
                 latitude=latitude, longitude=longitude, address=address, avatar_name=avatar_name)
        session.add(p)
        session.commit()

        attachments = post.get('attachments')
        if attachments:
            for attachment in attachments:
                attachment_id = attachment.get('id')
                attachment_type = attachment.get('type')
                file_url = attachment.get('fileUrl')
                file_format = attachment.get('fileFormat')
                file_width = attachment.get('fileWidth')
                file_height = attachment.get('fileHeight')
                file_duration = attachment.get('fileDuration')
                a = Attachment(attachment_id=attachment_id, attachment_type=attachment_type,
                               file_url=file_url, file_format=file_format, file_width=file_width,
                               file_height=file_height, file_duration=file_duration, post_id=post_id)
                session.add(a)
                session.commit()

        redis_cli.sadd(key, post_id)


def response(flow):
    url = flow.request.pretty_url
    if url.startswith("https://api.soulapp.cn/v3/post/recommended"):
        resp = flow.response.content
        result = json.loads(resp)
        if result.get('success'):
            data = result.get('data')
            post_list = data.get('postList')
            for post in post_list:
                handle(post)
    elif url.startswith("https://api.soulapp.cn/v3/post/recent"):
        resp = flow.response.content
        result = json.loads(resp)
        if result.get('success'):
            post_list = result.get('data')
            for post in post_list:
                handle(post)
