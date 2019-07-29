# coding=utf-8
import os
import yaml
import logging
import logging.config


class Logger:
    def __init__(self, log_name='info.log'):
        """日志相关配置"""

        path = 'logs'
        if not os.path.exists(path):
            os.mkdir(path)

        path = os.path.dirname(__file__) + '/logging.yml'
        if os.path.exists(path):
            with open(path, 'r', encoding='utf-8') as f:
                config = yaml.safe_load(f)
                logging.config.dictConfig(config)
        else:
            logging.basicConfig(level='INFO', filename=log_name,
                                format='%(asctime)s %(filename)s[%(lineno)d] %(name)s (%(levelname)s): %(message)s')

        logging.info(">>> Load logger config")
