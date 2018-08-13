def add_user():
    """ The SQL for add user 
    
    :return: sql
    """

    sql = 'INSERT INTO tb_user(user_id, uid_hash,"name",gender,head_img,' \
          'location,hometown,birth_year,horoscope,profession,blast,update_time,' \
          'create_time,"data",distance,d_last_update,photos_data) ' \
          'VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'
    return sql


def update_user():
    """ The SQL for update user 

    :return: sql
    """

    sql = 'update tb_user set "name"=%s,head_img=%s,location=%s,hometown=%s,birth_year=%s,horoscope=%s,' \
          'profession=%s,blast=%s,update_time=%s,"data"=%s,d_last_update=%s,photos_data=%s where user_id=%s'
    return sql


def add_user_photo():
    """ The SQL for add user photo 

    :return: sql
    """

    sql = 'INSERT INTO tb_user_photo(user_id, photo,create_time) VALUES (%s,%s,%s)'
    return sql


def add_user_talk():
    """ The SQL for add user talk 

    :return: sql
    """

    sql = 'INSERT INTO tb_user_talk(user_id, msg_id,tl_hash,"comment",c_time,' \
          'msg_type,disable_comment,photos_data,"data",create_time) VALUES ' \
          '(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'
    return sql


def add_user_comment():
    """ The SQL for add user comment 

    :return: sql
    """

    sql = 'INSERT INTO tb_user_comment(comment_id, user_id,msg_id,"comment",c_time,create_time) ' \
          'VALUES (%s,%s,%s,%s,%s,%s)'
    return sql


def find_random_music():
    """ The SQL to get random music 

    :return: sql
    """

    sql = 'select id,music_name,music_lyric from tb_music_163 where music_lyric is not null order by ' \
          'random() limit 1'
    return sql


def update_music_count():
    """ The SQL to update music count

    :return: sql
    """

    sql = 'update tb_music_163 set "count"="count"+1 where id =%s'
    return sql
