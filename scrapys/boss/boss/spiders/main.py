from utils import cron
from scrapy.cmdline import execute


def run():
    execute('scrapy crawl job'.split(' '))


if __name__ == '__main__':
    cron.cron_blocking(job=run, day_of_week='5')
