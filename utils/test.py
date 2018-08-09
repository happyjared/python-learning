import rds
import psycopg2

redis = rds.Rds(host='localhost', port='12379', password='redis6379')
conn_info = "host=localhost port=12432 dbname=planet user=planet password=planet"
conn = psycopg2.connect(conn_info)
cur = conn.cursor()


def user():
    sql = 'select user_id,create_time from tb_user'
    cur.execute(sql)
    rows = cur.fetchall()
    for record in rows:
        key = 'planet:u:{0}'.format(record[0])
        value = record[1].strftime('%Y-%m-%d %H:%M:%S')
        result = redis.redis_cli.set(key, value)
        print(result)


def user_talk():
    sql = 'select user_id,msg_id from tb_user_talk'
    cur.execute(sql)
    rows = cur.fetchall()
    for record in rows:
        key = 'planet:u:{0}:talk'.format(record[0])
        result = redis.redis_cli.sadd(key, record[1])
        print(result)


def user_photo():
    sql = 'select user_id,photo from tb_user_photo'
    cur.execute(sql)
    rows = cur.fetchall()
    for record in rows:
        key = 'planet:u:{0}:photo'.format(record[0])
        result = redis.redis_cli.sadd(key, record[1])
        print(result)


def user_comment():
    sql = 'select user_id,msg_id,comment_id from tb_user_comment'
    cur.execute(sql)
    rows = cur.fetchall()
    for record in rows:
        key = 'planet:u:{0}:m:{1}:comment'.format(record[0], record[1])
        result = redis.redis_cli.sadd(key, record[2])
        print(result)


if __name__ == '__main__':
    user()
    user_talk()
    user_photo()
    user_comment()
