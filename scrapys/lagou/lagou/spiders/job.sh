#!/usr/bin/env bash
git pull origin master
nohup python3 main.py 1 >> /dev/null 2>&1 &