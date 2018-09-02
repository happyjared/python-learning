from scrapy.cmdline import execute

# 免费课程
execute(['scrapy', 'crawl', 'course'])
# 实战课程
execute('scrapy crawl coding'.split(' '))
# 职业路径 TODO
# execute(['scrapy', 'crawl', 'clazz'])
