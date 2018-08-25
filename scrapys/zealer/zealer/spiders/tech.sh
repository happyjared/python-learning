#!/usr/bin/env bash
git pull origin master
nohup python3 main.py >>null 2>&1 & /dev/