# -*- coding: utf-8 -*-
# @author : jared
# @date : 2019/5/16 19:33

import os
from apscheduler.schedulers.background import *


def robot_job(job):
    scheduler = BlockingScheduler()
    scheduler.add_job(job, 'cron', hour=6)
    scheduler.start()


def robot():
    os.system('./start.sh')


if __name__ == '__main__':
    robot_job(robot)
