# # -*- coding:utf-8 -*-
# # 程序主入口
# import spider_download
# import spider_output
# import spider_parser
# import spider_url
#
#
# class SpiderMain(object):
#     def __init__(self):
#         self.urls = spider_url.urlManager()
#         self.downloader = spider_download.htmlDownload()
#         self.parser = spider_parser.htmlParser()
#         self.outputer = spider_output.htmlOutputer()
#
#     def craw(self, url):
#         count = 1
#         self.urls.add_new_url(url)
#         while self.urls.has_new_url():
#             try:
#                 new_url = self.urls.get_new_url()
#                 html_content = self.downloader.download(new_url)
#                 new_urls, new_data = self.parser.parse(new_url, html_content)
#                 self.urls.add_new_urls(new_urls)
#                 self.outputer.collect_data(new_data)
#                 print 'craw %d : %s' % (count, new_url)
#                 if count == 100:
#                     break
#                 count += 1
#             except Exception as e:
#                 print 'craw failed：', e
#         self.outputer.output_html()
#
#
# if __name__ == '__main__':
#     # 搜狗百科：http://baike.sogou.com/v30907.htm
#     # 百度百科：http://baike.baidu.com/item/Python
#     root_url = 'http://baike.baidu.com/item/Python'
#     spider = SpiderMain()
#     spider.craw(root_url)
