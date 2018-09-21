from datetime import datetime


def now_date():
    return datetime.now()


def now_year():
    return datetime.now().year


def now_str():
    return datetime.now().strftime('%Y-%m-%d %H:%M:%S')


def date_to_str(date_time):
    return date_time.strftime('%Y-%m-%d %H:%M:%S')


def str_to_date(str_time):
    return datetime.strptime(str_time, '%Y-%m-%d %H:%M:%S')


def str_to_date_with_format(str_time, str_format):
    return datetime.strptime(str_time, str_format)


def timestamp_to_datetime(timestamp):
    if len(str(timestamp)) == 13:
        timestamp = timestamp / 1000  # 毫秒时间戳转秒
    return datetime.fromtimestamp(timestamp)
