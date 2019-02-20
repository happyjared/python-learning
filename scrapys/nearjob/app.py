from utils import pgs, rds, es

host, near_job = 'localhost', 'nearjob'
redis_port, redis_pwd = 12379, 'redis6379'


def postgres():
    return pgs.Pgs(host=host, port=12432, db_name=near_job, user=near_job, password=near_job)


def redis():
    return rds.Rds(host=host, port=redis_port, db=3, password=redis_pwd).redis_cli


def redis_ip():
    return rds.Rds(host=host, port=redis_port, db=14, password=redis_pwd).redis_cli


def elastic():
    return es.Es(host=host, port=12900, index=near_job, doc='job')
