import sys
from utils import cron
from scrapy.cmdline import execute


# 爬取数据
# execute(['scrapy', 'crawl', 'job', '-s', 'CLOSESPIDER_PAGECOUNT=10'])
# execute(['scrapy', 'crawl', 'job', '-s', 'CLOSESPIDER_ITEMCOUNT=5'])

# 判断过期
# execute(['scrapy', 'crawl', 'expire'])

def run():
    execute(['scrapy', 'crawl', 'job'])


if __name__ == '__main__':
    if len(sys.argv) == 1:
        cron.cron_blocking(job=run, day_of_week='6')
    else:
        run()
