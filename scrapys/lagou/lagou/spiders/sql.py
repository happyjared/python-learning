from const import job

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
          '%s,%s,%s,%s,%s,%s,%s,%s)'

    return sql.format(job.TableType.get_table(type_id))
