import logging
import psycopg2

log = logging.getLogger()


def handler(sql, params, db_name='postgres'):
    """Save or Update data to PostgreSQL
    
    :param sql: SQL
    :param params: 参数列表
    :param db_name: 数据库名
    :return: 影响行数
    """

    effect_count = 0
    try:
        # 139.199.162.33
        conn_info = "host=localhost port=15234 dbname={0} user=planet password=planet".format(db_name)
        conn = psycopg2.connect(conn_info)
        cur = conn.cursor()
        cur.execute(sql, params)
        effect_count = cur.rowcount
    except psycopg2.OperationalError:
        log.exception('psycopg2 OperationalError')
        # To close thread
        raise psycopg2.OperationalError
    except psycopg2.IntegrityError:
        # print('psycopg2.IntegrityError.')
        # log.warning('psycopg2.IntegrityError.')
        pass
    except psycopg2.Error:
        log.error('SQL: %s , Params: %s', sql, params)
        log.exception('psycopg2 Error')
    else:
        conn.commit()
    return effect_count


def fetch_all(sql, params, db_name='postgres'):
    """Select data from PostgreSQL

    :param sql: SQL
    :param params: 参数列表
    :param db_name: 数据库名
    :return: 查询结果
    """

    rows = None
    try:
        conn_info = "host=localhost port=15234 dbname={0} user=planet password=planet".format(db_name)
        conn = psycopg2.connect(conn_info)
        cur = conn.cursor()
        cur.execute(sql, params)
        rows = cur.fetchall()
    except psycopg2.OperationalError:
        log.exception('psycopg2 OperationalError')
        # To close thread
        raise psycopg2.OperationalError
    except psycopg2.Error:
        log.error('SQL: %s , Params: %s', sql, params)
        log.exception('psycopg2 Error')
    return rows
