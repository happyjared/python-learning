#!/usr/bin/env bash
git pull origin master
nohup scrapy crawl job >> /dev/null 2>&1 &