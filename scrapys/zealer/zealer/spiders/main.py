from scrapy import cmdline

cmdline.execute("scrapy crawl tech CLOSESPIDER_PAGECOUNT=10".split(" "))
