from scrapy import cmdline

cmdline.execute("scrapy crawl tech -s CLOSESPIDER_ITEMCOUNT=10".split(" "))
