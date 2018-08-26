#!/usr/bin/env bash
git pull origin master
nohup scrapy crawl tech >> /dev/null 2>&1 &