#!/usr/bin/env bash
git pull origin master
nohup scrapy crawl playlist >> /dev/null 2>&1 &