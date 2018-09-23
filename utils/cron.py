from apscheduler.schedulers.background import *

cron = 'cron'


def cron_background(job, day_of_week, hour=0, minute=0):
    """ 后台运行的定时任务
    
    :param job: 
    :param day_of_week: 0-6
    :param hour: 0-23
    :param minute: 0-59
    :return: 
    """

    scheduler = BackgroundScheduler()
    scheduler.add_job(job, cron, day_of_week=day_of_week, hour=hour, minute=minute)
    scheduler.start()


def cron_blocking(job, day_of_week, hour=0, minute=0):
    """ 阻塞的定时任务
    
    :param job: 
    :param day_of_week: 0-6
    :param hour: 0-23
    :param minute: 0-59
    :return: 
    """

    scheduler = BlockingScheduler()
    scheduler.add_job(job, cron, day_of_week=day_of_week, hour=hour, minute=minute)
    scheduler.start()
