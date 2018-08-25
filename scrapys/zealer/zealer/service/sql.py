def save_series():
    """保存系列数据"""

    sql = 'insert into tb_zealer_series("name",cp,platform,enabled) values(%s,%s,%s,%s)'
    return sql


def get_series():
    """获取所有系列"""

    sql = 'select "id",cp from tb_zealer_series where enabled is True'
    return sql


def save_media():
    """保存Media数据"""

    sql = 'insert into tb_zealer_media(series_id,post_id,title,"desc",label,' \
          'cover_picture,media_info,comment_num,detail_url,live_time,create_time) ' \
          'values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'
    return sql


def save_comment():
    """保存评论数据"""

    sql = 'insert into tb_zealer_comment(post_id,username,avatar,content,comment_time,' \
          'create_time,user_id) values(%s,%s,%s,%s,%s,%s,%s)'

    return sql
