import rds
import psycopg2

redis = rds.Rds(host='', port='', password='')
conn_info = "host={0} port={1} dbname={2} user={3} password={4}"
conn = psycopg2.connect(conn_info)
cur = conn.cursor()


def user():
    sql = 'select user_id,create_time from tb_user'
    cur.execute(sql)
    rows = cur.fetchall()
    for record in rows:
        key = 'planet:u:{0}'.format(record[0])
        value = record[1].strftime('%Y-%m-%d %H:%M:%S')
        redis.redis_cli.set(key, value)


def user_talk():
    sql = 'select user_id,msg_id from tb_user_talk'
    cur.execute(sql)
    rows = cur.fetchall()
    for record in rows:
        key = 'planet:u:{0}:talk'.format(record[0])
        redis.redis_cli.sadd(key, record[1])


def user_photo():
    sql = 'select user_id,photo from tb_user_photo'
    cur.execute(sql)
    rows = cur.fetchall()
    for record in rows:
        key = 'planet:u:{0}:photo'.format(record[0])
        redis.redis_cli.set(key, record[1])


def user_comment():
    sql = 'select user_id,msg_id,comment_id from tb_user_comment'
    cur.execute(sql)
    rows = cur.fetchall()
    for record in rows:
        key = 'planet:u:{0}:m:{1}:comment'.format(record[0], record[1])
        redis.redis_cli.set(key, record[2])
