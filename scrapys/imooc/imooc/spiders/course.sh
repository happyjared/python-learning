#!/usr/bin/env bash
git pull origin master
nohup scrapy crawl course >> /dev/null 2>&1 &