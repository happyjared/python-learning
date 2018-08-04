# coding=UTF-8
import logging
import psycopg2

log = logging.getLogger()


def handler(sql, params):
    """Save data to PostgreSQL
    
    :param sql: SQL
    :param params: 参数列表
    :return: 影响行数
    """

    effect_count = 0
    try:
        # 139.199.162.33
        conn = psycopg2.connect("host=localhost port=15234 dbname=planet user=planet password=planet")
        cur = conn.cursor()
        cur.execute(sql, params)
        effect_count = cur.rowcount
    except psycopg2.OperationalError:
        log.exception('psycopg2 OperationalError')
        # To close thread
        raise psycopg2.OperationalError
    except psycopg2.IntegrityError:
        log.warning('psycopg2.IntegrityError. SQL: %s , Params: %s', sql, params)
    except psycopg2.Error:
        log.error('SQL: %s , Params: %s', sql, params)
        log.exception('psycopg2 Error')
    else:
        conn.commit()
    return effect_count
