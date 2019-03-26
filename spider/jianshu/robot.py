import os
import sys
import requests
from datetime import datetime

from bs4 import BeautifulSoup
from sqlalchemy import Column, String, Integer, FLOAT, TIMESTAMP, BOOLEAN, create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

argv = sys.argv
if len(argv) > 1:
    os.system("nohup python3 {} >> /dev/null 2>&1 &".format(argv[0]))
else:
    # 基类
    base = declarative_base()


    def get_now():
        return datetime.now()


    class Article(base):
        __tablename__ = "tb_jianshu_article"

        id = Column(Integer, primary_key=True, autoincrement=True)
        article_url_suffix = Column(String(50), nullable=False, index=True, unique=True, comment="地址后缀")
        ic_paid = Column(FLOAT(2), nullable=False, comment="简书钻数")
        ic_like = Column(Integer, nullable=False, comment="喜欢人次")
        ic_reward = Column(Integer, nullable=False, comment="赞赏人次")
        comment_num = Column(Integer, nullable=False, comment="评论人次")
        publish_time = Column(TIMESTAMP, nullable=False, comment="发布时间")
        processed = Column(BOOLEAN, nullable=False, default=False, comment="处理状态。True:已处理;False:未处理")
        update_time = Column(TIMESTAMP, nullable=False, comment="更新时间")
        create_time = Column(TIMESTAMP, nullable=False, comment="创建时间")


    class Info(base):
        __tablename__ = "tb_jianshu_info"

        id = Column(Integer, primary_key=True, autoincrement=True)
        cookie = Column(String(3000))


    conn = "postgresql+psycopg2://postgres:pgsmaster5432@193.112.0.219:12432/scrapy"
    engine = create_engine(conn, encoding="UTF-8", echo=False)
    base.metadata.create_all(engine)

    Session = sessionmaker(bind=engine)
    session = Session()

    domain = "https://www.jianshu.com"
    note_like = "https://www.jianshu.com/notes/{}/like"
    headers = {
        "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
    }


    def get_info():
        return session.query(Info).first()


    def get_article():
        return session.query(Article).filter_by(processed=False).all()


    def update_article(article_id):
        article = session.query(Article).get(article_id)
        article.processed = True
        session.add(article)
        session.commit()


    def may_like():
        for article in get_article():
            info = get_info()
            headers["cookie"] = info.cookie
            article_detail = domain + article.article_url_suffix
            resp = requests.get(article_detail, headers=headers)
            if resp.status_code == 200:
                bs = BeautifulSoup(resp.text, "html.parser")
                meta = bs.find("meta", {"name": "csrf-token"})
                note = bs.find("div", {"data-vcomp": "recommended-notes"})

                note_id = note["data-note-id"]
                headers["x-csrf-token"] = meta["content"]
                resp = requests.post(note_like.format(note_id), headers)
                print(resp.status_code)


    may_like()
