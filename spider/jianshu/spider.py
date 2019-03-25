import time
import datetime

import requests
from bs4 import BeautifulSoup
from sqlalchemy import Column, String, Integer, FLOAT, TIMESTAMP, create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# 创建对象的基类:
Base = declarative_base()


class Article(Base):
    __tablename__ = 'tb_jianshu_article'

    # 表字段
    id = Column(Integer, primary_key=True, autoincrement=True)
    article_url_suffix = Column(String(50), nullable=False, index=True)
    ic_paid = Column(FLOAT(2), nullable=False)
    ic_like = Column(Integer, nullable=False)
    comment_num = Column(Integer, nullable=False)
    publish_time = Column(TIMESTAMP, nullable=False)
    create_time = Column(TIMESTAMP, nullable=False, default=datetime.datetime.now())


conn = "postgresql+psycopg2://postgres:pgsmaster5432@localhost:12432/scrapy"
engine = create_engine(conn, encoding='UTF-8', echo=False)
Base.metadata.create_all(engine)

Session = sessionmaker(bind=engine)
session = Session()


def save_article(*args):
    suffix, paid, like, num, p_time = args
    article = session.query(Article).filter(Article.article_url_suffix != suffix).first()
    if not article:
        article = Article(article_url_suffix=suffix, ic_paid=paid, ic_like=like, comment_num=num, publish_time=p_time)
        session.add(article)
        session.commit()


domain = "https://www.jianshu.com"
headers = {
    "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
}
# 我的关注列表
following = "https://www.jianshu.com/users/000a530f461c/following"

while True:
    resp = requests.get(following, headers=headers)
    if resp.status_code == 200:
        html = resp.text
        bs = BeautifulSoup(html, 'html.parser')
        user_list = bs.find("ul", class_="user-list")
        avatar_list = user_list.find_all("a", class_="avatar")

        for avatar in avatar_list:
            # 具体关注的人
            following = domain + avatar['href']
            resp = requests.get(following, headers=headers)

            if resp.status_code == 200:
                html = resp.text
                bs = BeautifulSoup(html, 'html.parser')
                content_list = bs.find_all("div", class_="content")
                for content in content_list:
                    meta = content.find("div", class_="meta")

                    # 简书钻数 && 喜欢人次 && 发布时间
                    ic_paid = ic_like = 0
                    publish_time = None
                    span_list = meta.find_all("span")
                    if len(span_list) == 2:
                        ic_like, publish_time = span_list[0].text.strip(), span_list[1]["data-shared-at"]
                    else:
                        ic_paid = span_list[0].text.strip()
                        ic_like, publish_time = span_list[1].text.strip(), span_list[2]["data-shared-at"]
                    publish_time = datetime.datetime.strptime(publish_time, '%Y-%m-%dT%H:%M:%S+08:00')

                    publish_date = datetime.datetime.date(publish_time)
                    today_date = datetime.datetime.date(datetime.datetime.now())
                    if publish_date == today_date:
                        # 查看次数 && 评论人次
                        a_list = meta.find_all("a")
                        article_url_suffix, comment_num = a_list[0]['href'], a_list[1].text.strip()

                        save_article(article_url_suffix, ic_paid, ic_like, comment_num, publish_time)
    time.sleep(300)
