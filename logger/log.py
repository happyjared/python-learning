# coding=utf-8
import os
import yaml
import logging
import logging.config


class Logger(object):
    def __init__(self):
        """日志相关配置"""

        path = 'logs'
        if not os.path.exists(path):
            os.mkdir(path)

        path = 'logging.yml'
        if os.path.exists(path):
            with open(path, 'r', encoding='utf-8') as f:
                config = yaml.load(f)
                logging.config.dictConfig(config)
        else:
            logging.basicConfig(level='INFO', filename='info.log',
                                format='%(asctime)s %(filename)s[%(lineno)d] %(name)s (%(levelname)s): %(message)s')

        logging.info(">>> Load logger config")
