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
            logging.exception('Redis error')
