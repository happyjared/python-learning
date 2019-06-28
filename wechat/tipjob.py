import os
from apscheduler.schedulers.background import *


def job_task():
    scheduler = BlockingScheduler()
    scheduler.add_job(tip, 'cron', hour=19, minute="30,45,59")
    scheduler.start()


def tip():
    resp = os.popen("ps -ef|grep python | grep tip | wc -l").read()
    if int(resp) > 1:
        os.system("nohup python3 tip.py >> /dev/null 2>&1 &")


if __name__ == '__main__':
    job_task()
