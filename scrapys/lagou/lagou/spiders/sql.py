from const import nearjob


def get_city():
    """Get all city from tb_city"""

    sql = 'select id,"name" from tb_city order by id asc'
    return sql


def get_type():
    """Get all type from tb_type"""

    sql = 'select id,"name" from tb_type where id > 0 order by id asc'
    return sql


def save(type_id):
    """Save data

    :param type_id:
    :return:
    """

    sql = 'insert into {0}(position_id,city_id,city,job_name,job_salary,job_experience,job_education,' \
          'job_advantage,job_label,job_description,post_job_time,company_id,company_short_name,' \
          'company_full_name,company_location,company_latitude,company_longitude,company_index,' \
          'company_finance,company_industry,company_scale,company_zone,source_from,source_url,update_time,' \
          'create_time,expired) values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,' \
          '%s,%s,%s,%s,%s,%s,%s,%s) returning id'

    return sql.format(nearjob.NearJob.get_table(type_id))


def get_data(tb_name, source_from):
    """根据表名获取数据

    :param tb_name:
    :param source_from:
    :return:
    """

    sql = 'select id,source_url from {0} where source_from ={1} expired is False order by id asc'

    return sql.format(tb_name, source_from)


def expire_data(tb_name):
    sql = 'update {0} set expired = True,expired_time=%s where id = %s returning position_id,company_id'

    return sql.format(tb_name)
