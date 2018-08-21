from enum import Enum, unique


@unique
class SourceType(Enum):
    lagou, boss = 1, 2  # 拉勾, Boss
