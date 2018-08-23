from es import Es
import pgs

if __name__ == '__main__':

    host = 'localhost'
    es = Es(host=host, port=12900, index='nearjob', doc='job')
    postgres = pgs.Pgs(host=host, port=12432, db_name='nearjob', user='nearjob', password='nearjob')

    tb_list = {'tb_java': 1, 'tb_php': 2, 'tb_python': 3, 'tb_ios': 5, 'tb_android': 4}

    for tb, jobId in tb_list.items():
        sql = 'select job_name,job_advantage,job_label,company_short_name,company_full_name,company_finance,' \
              'company_industry,company_zone,company_location,city_id,company_latitude,company_longitude,' \
              'position_id,source_from,post_job_time from {}'.format(tb)
        rows = postgres.fetch_all(sql)
        for row in rows:
            keyword = '{} {} {} {} {} {} {} {} {}'.format(row[0], row[1], row[2],
                                                          row[3], row[4], row[5],
                                                          row[6], row[7], row[8]
                                                          ).replace('None', '')
            json_data = {"cityId": row[9], "location": {"lat": row[10], "lon": row[11]},
                         "positionId": row[12], "jobId": jobId, "sourceFrom": row[13],
                         "keyword": keyword, "postJobTime": row[14]}
            es.put_data(data_body=json_data, _id=row[12])
