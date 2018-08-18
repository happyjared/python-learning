def get_city():
    """Get city from table_city"""

    sql = 'select id,"name",boss_code from table_city where enabled is True order by id asc'
    return sql


def get_job():
    """Get job from table_job"""

    sql = 'select id,"name",boss_code from table_job where enabled is True order by id asc'
    return sql


def save(tb_name):
    """Save data

    :param tb_name:
    :return:
    """

    sql = 'insert into {0}(position_id,city_id,city,job_name,job_salary,job_experience,job_education,' \
          'job_advantage,job_label,job_description,post_job_time,company_id,company_short_name,' \
          'company_full_name,company_location,company_latitude,company_longitude,company_index,' \
          'company_finance,company_industry,company_scale,company_zone,source_from,source_url,update_time,' \
          'create_time,expired) values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,' \
          '%s,%s,%s,%s,%s,%s,%s,%s) returning id'

    return sql.format(tb_name)


def get_data(tb_name):
    """根据tb_name获取数据

    :param tb_name:
    :return:
    """

    sql = 'select id,source_url from {0} where source_from =%s expired is False order by id asc'

    return sql.format(tb_name)


def expire_data(tb_name):
    sql = 'update {0} set expired = True,expired_time=%s where id = %s returning position_id,company_id'

    return sql.format(tb_name)
