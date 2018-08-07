import redis

redis_cli = redis.Redis(host='139.199.162.33', port=16937, db=0, password='planet')

print(redis_cli.set('a', 'b'))
b = redis_cli.get('a').decode('utf-8')
print(b)
print(redis_cli.set('c', 1))
c = redis_cli.get('c').decode('utf-8')
c = int[c]
print(c)
