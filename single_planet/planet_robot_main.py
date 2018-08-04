import os
import sys
import yaml
import logging
import planet_robot
import logging.config


def setup_logging():
    """日志相关配置
    
    """

    path = 'logs'
    if not os.path.exists(path):
        os.mkdir(path)

    path = 'config/logging.yml'
    if os.path.exists(path):
        with open(path, 'r', encoding='utf-8') as f:
            config = yaml.load(f)
            logging.config.dictConfig(config)
    else:
        logging.basicConfig(level='INFO', filename='robot.log',
                            format='%(asctime)s %(filename)s[%(lineno)d] %(name)s (%(levelname)s): %(message)s')


if __name__ == '__main__':
    sys.path.append('/root/py/python-learning/common_util/')
    setup_logging()
    planet_robot.run()
