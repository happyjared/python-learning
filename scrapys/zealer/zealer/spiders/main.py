from scrapy import cmdline

cmdline.execute("scrapy crawl tech -s CLOSESPIDER_PAGECOUNT=10".split(" "))
