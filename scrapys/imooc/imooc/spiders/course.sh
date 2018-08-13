#!/usr/bin/env bash
git pull origin master
# 免费课程
nohup scrapy crawl course >> /dev/null 2>&1 &