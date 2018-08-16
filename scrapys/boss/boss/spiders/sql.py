def get_city():
    """Get all city from tb_city"""

    sql = 'select id,"name",boss_code from tb_city order by id asc'
    return sql


def get_type():
    """Get all type from tb_type"""

    sql = 'select id,"name",boss_code from tb_type where id > 0 order by id asc'
    return sql
