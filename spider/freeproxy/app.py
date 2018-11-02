from utils import rds


def redis():
    return rds.Rds(host='localhost', port=12379, db=14, password='redis6379').redis_cli


