# -*- coding: utf-8 -*-
# @author : jared
# @date : 2019/5/16 19:33

import os
from apscheduler.schedulers.background import *


def robot_job(job, hour):
    scheduler = BlockingScheduler()
    scheduler.add_job(job, 'cron', hour=hour)
    scheduler.start()


def robot():
    os.system('./start.sh')


if __name__ == '__main__':
    os.system("nohup python3 start.py 23 >> /dev/null 2>&1 &")
    os.system("nohup python3 start.py 6 >> /dev/null 2>&1 &")
