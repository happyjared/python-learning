from utils import pgs, rds

host, p_scrapy = 'localhost', 'scrapy'
redis_port, redis_pwd = 12379, 'redis6379'


def postgres():
    return pgs.Pgs(host=host, port=12432, db_name=p_scrapy, user=p_scrapy, password=p_scrapy)


def redis():
    return rds.Rds(host=host, port=redis_port, db=4, password=redis_pwd).redis_cli
