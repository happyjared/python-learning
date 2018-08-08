import redis
import logging

log = logging.getLogger()


class Rds:

    def __init__(self, host='localhost', port=6379, db=0, password=None, timeout=3):
        try:
            pool = redis.ConnectionPool(host=host, port=port, db=db, password=password,
                                        decode_responses=True, socket_timeout=timeout,
                                        socket_connect_timeout=timeout, retry_on_timeout=timeout)
            self.redis_cli = redis.Redis(connection_pool=pool)
            self.redis_cli.ping()
        except:
            logging.warning('Redis error')
            self.redis_cli = None


if __name__ == '__main__':
    rds = Rds(host='139.199.162.33', port=1937, password='planet')
    rds_cli = rds.redis_cli
    if rds_cli:
        print(rds.redis_cli.get('a'))
        print(rds.redis_cli.get('fff'))
