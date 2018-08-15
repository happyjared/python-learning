from enum import Enum, unique


@unique
class SourceType(Enum):
    lagou = 0  # 拉勾网
    boss = 1  # Boss直聘


class TableType(object):
    prefix = 'tb_{0}'
    tables = {'1': 'java', '2': 'php', '3': 'python', '4': 'android', '5': 'ios'}

    @staticmethod
    def get_table(t_id):
        return TableType.prefix.format(TableType.tables.get(str(t_id)))
