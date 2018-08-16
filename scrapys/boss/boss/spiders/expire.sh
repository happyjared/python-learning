#!/usr/bin/env bash
git pull origin master
nohup scrapy crawl expire >> /dev/null 2>&1 &