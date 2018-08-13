import logging
import psycopg2

log = logging.getLogger()


class Pgs:

    def __init__(self, host='localhost', port=5432, db_name='postgres', user='postgres', password='postgres'):
        conn_info = "host={0} port={1} dbname={2} user={3} password={4}".format(
            host, port, db_name, user, password)
        self.conn = psycopg2.connect(conn_info)
        self.cur = self.conn.cursor()

    def handler(self, sql, params):
        """Save or Update or Delete data from PostgreSQL

        :param sql: SQL
        :param params: 参数列表
        :return: 影响行数
        """

        effect_count = 0
        try:
            self.cur.execute(sql, params)
            effect_count = self.cur.rowcount
        except psycopg2.OperationalError:
            log.exception('psycopg2 OperationalError')
            # To close thread
            raise psycopg2.OperationalError
        except psycopg2.IntegrityError:
            self.cur.rollback()
            # print('psycopg2.IntegrityError.')
            # log.warning('psycopg2.IntegrityError.')
            pass
        except psycopg2.Error:
            self.conn.rollback()
            log.error('SQL: %s , Params: %s', sql, params)
            log.exception('psycopg2 Error')
        else:
            self.conn.commit()
        return effect_count

    def fetch_all(self, sql, params):
        """Select data from PostgreSQL

        :param sql: SQL
        :param params: 参数列表
        :return: 查询结果
        """

        rows = None
        try:
            self.cur.execute(sql, params)
            rows = self.cur.fetchall()
        except psycopg2.OperationalError:
            log.exception('psycopg2 OperationalError')
            # To close thread
            raise psycopg2.OperationalError
        except psycopg2.Error:
            self.conn.rollback()
            log.error('SQL: %s , Params: %s', sql, params)
            log.exception('psycopg2 Error')
        else:
            self.conn.commit()
        return rows
