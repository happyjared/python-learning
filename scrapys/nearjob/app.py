from utils import pgs, rds, es

host, near_job = 'localhost', 'nearjob'


def postgres():
    return pgs.Pgs(host=host, port=12432, db_name=near_job, user=near_job, password=near_job)


def redis():
    return rds.Rds(host=host, port=12379, db=3, password='redis6379').redis_cli


def elastic():
    return es.Es(host=host, port=12900, index=near_job, doc='job')
