import time
import random
import requests
from utils import es
from utils import pgs
from bs4 import BeautifulSoup

elastic = es.Es(host='localhost', port=12900, index='mp', doc='article')
wx_mps = 'wxmps'  # 这里数据库、用户、密码一致(需替换成实际的)
postgres = pgs.Pgs(host='localhost', port=12432, db_name=wx_mps, user=wx_mps, password=wx_mps)


def crawl_article_content(content_url):
    """抓取文章内容
    :param content_url: 文章地址
    """

    html = requests.get(content_url, verify=False).text
    bs = BeautifulSoup(html, 'html.parser')
    js_content = bs.find(id='js_content')
    if js_content:
        p_list = js_content.find_all('p')
        content_list = list(map(lambda p: p.text, filter(lambda p: p.text != '', p_list)))
        content = ''.join(content_list)
        return content
    else:
        print(content_url)


def get_content_url():
    sql = 'select id,msg_id,title,author,cover,digest,source_url,post_time,mps_id,content_url from ' \
          'tb_article where "content" is null'
    rows = postgres.fetch_all(sql=sql)
    for row in rows:
        article_id = row[0]
        msg_id = row[1]
        title = row[2]
        author = row[3]
        cover = row[4]
        digest = row[5]
        source_url = row[6]
        post_time = row[7]
        mps_id = row[8]
        content_url = row[9]
        content = crawl_article_content(content_url)

        json_data = {"articleId": article_id, "author": author, "content": content,
                     "contentURL": content_url, "cover": cover, "digest": digest,
                     "mpsId": mps_id, "msgId": msg_id, "postTime": post_time,
                     "sourceURL": source_url, "title": title}
        elastic.put_data(data_body=json_data, _id=msg_id)

        save_content(article_id, content)
        print('Y')
        time.sleep(random.randint(3, 5))


def save_content(article_id, content):
    sql = 'update tb_article set content = %s where id = %s'
    postgres.handler(sql, (content, article_id))


if __name__ == '__main__':
    get_content_url()
