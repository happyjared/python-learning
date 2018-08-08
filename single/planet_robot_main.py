import os
import yaml
import logging
import logging.config
from threading import Thread
from planet_robot import PlanetRobot
from planet_spider import PlanetSpider


def setup_logging():
    """日志相关配置
    
    """

    path = 'logs'
    if not os.path.exists(path):
        os.mkdir(path)

    path = '../config/logging.yml'
    if os.path.exists(path):
        with open(path, 'r', encoding='utf-8') as f:
            config = yaml.load(f)
            logging.config.dictConfig(config)
    else:
        logging.basicConfig(level='INFO', filename='robot.log',
                            format='%(asctime)s %(filename)s[%(lineno)d] %(name)s (%(levelname)s): %(message)s')


if __name__ == '__main__':
    setup_logging()
    ps = PlanetSpider()
    pr = PlanetRobot(ps)

    t1 = Thread(target=pr.user_dynamic, name='Thread-1')
    t2 = Thread(target=pr.reply_robot, name='Thread-2')

    t1.start()
    t2.start()
