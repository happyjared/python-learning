#!/usr/bin/env bash
git pull origin master
# 实战课程
nohup scrapy crawl coding >> /dev/null 2>&1 &