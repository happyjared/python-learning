import os
import yaml
import logging
import logging.config


def setup_logging():
    """日志相关配置

    """

    path = 'logs2'
    if not os.path.exists(path):
        os.mkdir(path)

    path = '../config/logging.yml'
    if os.path.exists(path):
        with open(path, 'r', encoding='utf-8') as f:
            config = yaml.load(f)
            logging.config.dictConfig(config)
    else:
        logging.basicConfig(level='INFO', filename='info.log',
                            format='%(asctime)s %(filename)s[%(lineno)d] %(name)s (%(levelname)s): %(message)s')

    log = logging.getLogger()
    log.info(">>> Load logger config")
    return log
