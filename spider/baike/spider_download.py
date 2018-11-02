# -*- coding:utf-8 -*-
# 页面下载器
import urllib.request


class HtmlDownload(object):

    @staticmethod
    def download(url):
        if url is None:
            return None

        res = urllib.request.urlopen(url)

        if res.getCode() != 200:
            return None

        return res.read()
