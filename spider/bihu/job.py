import os
import sys

from apscheduler.schedulers.background import BlockingScheduler

argv = sys.argv


def job():
    os.system("nohup python3 robot.py {} {} >> /dev/null 2>&1 &".format(argv[1], argv[2]))


scheduler = BlockingScheduler()
scheduler.add_job(job, 'bihu', hour=7)
scheduler.start()
