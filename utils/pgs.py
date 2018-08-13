import logging
import psycopg2

log = logging.getLogger()


class Pgs:
    def __init__(self, host='localhost', port=5432, db_name='postgres', user='postgres', password='postgres'):
        self.conn_info = "host={0} port={1} dbname={2} user={3} password={4}".format(
            host, port, db_name, user, password)
        # self.conn = psycopg2.connect(conn_info)
        # self.cur = self.conn.cursor()

    def handler(self, sql, params):
        """Save or Update or Delete data from PostgreSQL

        :param sql: SQL
        :param params: 参数列表
        :return: 影响行数
        """

        conn = None
        effect_count = 0
        try:
            conn = psycopg2.connect(self.conn_info)
            cur = conn.cursor()
            cur.execute(sql, params)
            effect_count = cur.rowcount
        except psycopg2.OperationalError:
            log.exception('psycopg2 OperationalError')
            # To close thread
            raise psycopg2.OperationalError
        except psycopg2.IntegrityError:
            conn.rollback()
            # print('psycopg2.IntegrityError.')
            # log.warning('psycopg2.IntegrityError.')
            pass
        except psycopg2.Error:
            conn.rollback()
            log.error('SQL: %s , Params: %s', sql, params)
            log.exception('psycopg2 Error')
        else:
            conn.commit()
        return effect_count

    def fetch_all(self, sql, params):
        """Select data from PostgreSQL

        :param sql: SQL
        :param params: 参数列表
        :return: 查询结果
        """

        conn = None
        rows = None
        try:
            conn = psycopg2.connect(self.conn_info)
            cur = conn.cursor()
            cur.execute(sql, params)
            rows = cur.fetchall()
        except psycopg2.OperationalError:
            log.exception('psycopg2 OperationalError')
            # To close thread
            raise psycopg2.OperationalError
        except psycopg2.Error:
            conn.rollback()
            log.error('SQL: %s , Params: %s', sql, params)
            log.exception('psycopg2 Error')
        else:
            conn.commit()
        return rows

    def close(self):
        """ Release connection"""
        pass
        # self.cur.close()
        # self.conn.close()
