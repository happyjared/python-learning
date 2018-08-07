import redis

redis_cli = redis.Redis(host=' 139.199.162.33', port=16937, db=0, password='')
redis_cli.get('a')
