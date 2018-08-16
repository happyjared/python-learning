from scrapy.cmdline import execute

# 爬取数据
# execute(['scrapy', 'crawl', 'job'])

# 判断过期
execute(['scrapy', 'crawl', 'expire'])
