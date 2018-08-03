import psycopg2


def handler(sql, params):
    # 139.199.162.33
    conn = psycopg2.connect("host=139.199.162.33 port=15234 dbname=planet user=planet password=planet")
    row_count = 0
    try:
        cur = conn.cursor()
        cur.execute(sql, params)
        row_count = cur.rowcount
    except psycopg2.Error as e:
        print(sql, params)
        print('Error ', e)
        conn.rollback()
    else:
        conn.commit()
    return row_count
