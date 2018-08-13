#!/usr/bin/env bash
git pull origin master
nohup scrapy crawl coding >> /dev/null 2>&1 &