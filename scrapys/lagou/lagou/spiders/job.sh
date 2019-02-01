#!/usr/bin/env bash
git pull origin master
nohup python3 main.py lagou >> /dev/null 2>&1 &