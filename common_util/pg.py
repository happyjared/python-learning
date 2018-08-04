import logging
import psycopg2

log = logging.getLogger()


def handler(sql, params):
    """Save data to PostgreSQL
    
    :param sql: SQL
    :param params: 参数列表
    :return: 影响行数
    """

    # 139.199.162.33
    conn = psycopg2.connect("host=localhost port=15234 dbname=planet user=planet password=planet")
    effect_count = 0
    try:
        cur = conn.cursor()
        cur.execute(sql, params)
        effect_count = cur.rowcount
    except psycopg2.Error:
        conn.rollback()
        log.error('SQL: %s , Params: %s', sql, params)
        log.exception('psycopg2 Error')
    else:
        conn.commit()
    return effect_count
