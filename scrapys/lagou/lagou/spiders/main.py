from scrapy.cmdline import execute

# 爬取数据
execute(['scrapy', 'crawl', 'job', '-s', 'CLOSESPIDER_PAGECOUNT=10'])

# 判断过期
# execute(['scrapy', 'crawl', 'expire'])
