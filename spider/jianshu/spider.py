import sys
import os
import datetime
import random
import time

import requests
from bs4 import BeautifulSoup
from sqlalchemy import Column, String, Integer, FLOAT, TIMESTAMP, create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

argv = sys.argv
if len(argv) > 1:
    os.system("nohup python3 {} >> /dev/null 2>&1 &".format(argv[0]))
else:
    # 基类
    base = declarative_base()


    class Article(base):
        __tablename__ = "tb_jianshu_article"

        id = Column(Integer, primary_key=True, autoincrement=True)
        article_url_suffix = Column(String(50), nullable=False, index=True, unique=True, comment="地址后缀")
        ic_paid = Column(FLOAT(2), nullable=False, comment="简书钻数")
        ic_like = Column(Integer, nullable=False, comment="喜欢人次")
        ic_reward = Column(Integer, nullable=False, comment="赞赏人次")
        comment_num = Column(Integer, nullable=False, comment="评论人次")
        publish_time = Column(TIMESTAMP, nullable=False, comment="发布时间")
        init_time = datetime.datetime.now()
        update_time = Column(TIMESTAMP, nullable=False, default=init_time, comment="更新时间")
        create_time = Column(TIMESTAMP, nullable=False, default=init_time, comment="创建时间")


    conn = "postgresql+psycopg2://postgres:pgsmaster5432@localhost:12432/scrapy"
    engine = create_engine(conn, encoding="UTF-8", echo=False)
    base.metadata.create_all(engine)

    Session = sessionmaker(bind=engine)
    session = Session()


    def save_article(*args):
        suffix, paid, like, num, p_time, reward = args
        article = session.query(Article).filter(Article.article_url_suffix == suffix).first()
        if not article:
            # add
            article = Article(article_url_suffix=suffix, ic_paid=paid, ic_reward=reward,
                              ic_like=like, comment_num=num, publish_time=p_time)
        else:
            # update
            article.ic_paid, article.ic_like, article.ic_reward, article.comment_num = paid, like, reward, num
            article.update_time = datetime.datetime.now()
        session.add(article)
        session.commit()


    domain = "https://www.jianshu.com"
    headers = {
        "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
    }
    # 我的关注列表
    following = "https://www.jianshu.com/users/000a530f461c/following?page={}"

    while True:
        for page in range(1, 5):
            resp = requests.get(following.format(page), headers=headers)
            if resp.status_code == 200:
                html = resp.text
                bs = BeautifulSoup(html, "html.parser")
                user_list = bs.find("ul", class_="user-list")
                avatar_list = user_list.find_all("a", class_="avatar")

                for avatar in avatar_list:
                    # 具体关注的人
                    following_detail = domain + avatar["href"]
                    resp = requests.get(following_detail, headers=headers)

                    if resp.status_code == 200:
                        html = resp.text
                        bs = BeautifulSoup(html, "html.parser")
                        content_list = bs.find_all("div", class_="content")

                        for content in content_list:
                            meta = content.find("div", class_="meta")

                            # 简书钻数 && 喜欢人次 && 发布时间 && 赞赏人次
                            ic_paid = ic_like = ic_reward = 0
                            publish_time = None
                            span_list = meta.find_all("span")
                            span_list_length = len(span_list)
                            if span_list_length == 2:
                                ic_like, publish_time = span_list[0].text.strip(), span_list[1]["data-shared-at"]
                            else:
                                ic_paid, ic_like = span_list[0].text.strip(), span_list[1].text.strip()
                                if span_list_length == 3:
                                    publish_time = span_list[2]["data-shared-at"]
                                elif span_list_length == 4:
                                    ic_reward, publish_time = span_list[2].text.strip(), span_list[3]["data-shared-at"]
                            publish_time = datetime.datetime.strptime(publish_time, "%Y-%m-%dT%H:%M:%S+08:00")

                            publish_date = datetime.datetime.date(publish_time)
                            today_date = datetime.datetime.date(datetime.datetime.now())
                            if publish_date == today_date:
                                # 查看次数 && 评论人次
                                a_list = meta.find_all("a")
                                article_url_suffix, comment_num = a_list[0]["href"], a_list[1].text.strip()

                                save_article(article_url_suffix, ic_paid, ic_like, comment_num, publish_time, ic_reward)

        print("sleep...")
        time.sleep(random.randint(300, 600))
