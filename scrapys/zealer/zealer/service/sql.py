def get_series():
    """获取所有系列"""

    sql = 'select "id",name from tb_zealer_series where enabled is True'
    return sql


def save_media():
    """保存Media数据"""

    sql = 'insert into tb_zealer_media(series_id,post_id,title,"desc",label,' \
          'cover_picture,media_info,comment_num,detail_url,live_time,create_time) ' \
          'values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'
    return sql


def save_comment():
    """保存评论数据"""

    sql = 'insert into tb_zealer_comment(media_id,username,avatar,content,comment_time,' \
          'create_time) values(%s,%s,%s,%s,%s,%s)'

    return sql
