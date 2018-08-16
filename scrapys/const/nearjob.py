from enum import Enum, unique


@unique
class SourceType(Enum):
    lagou = 0  # 拉勾网
    boss = 1  # Boss直聘


class TableType(object):
    prefix = 'tb_{0}'
    tables = {'0': 'tmp', '1': 'java', '2': 'php', '3': 'python', '4': 'android', '5': 'ios'}

    @staticmethod
    def get_table(type_id):
        return TableType.prefix.format(TableType.tables.get(str(type_id)))

    @staticmethod
    def get_all_table():
        for value in TableType.tables.values():
            yield TableType.prefix.format(value)


if __name__ == '__main__':
    for v in TableType.get_all_table():
        print(v)
