import requests
from bs4 import BeautifulSoup


class LaGou:

    # 数据初始化
    def __init__(self):
        self.headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) '
                          'Chrome/66.0.3359.139 Safari/537.36'
        }

    # 获取查询URL
    @staticmethod
    def get_url():
        # 求职岗位：必填
        job = 'Java'
        # 工作地点
        city = '广州'
        # 行政区
        district = ''
        # 商区
        biz_area = ''
        # 工作经验：3年及以下,3-5年,5-10年,10年以上,不要求。可多选，以","分隔
        gj = ''
        # 工作性质：应届,实习
        gx = ''
        # 学历要求：大专,本科,硕士,博士,不要求。可多选，以","分隔
        xl = ''
        # 融资阶段：未融资,天使轮,A轮,B轮,C轮,D论及以上,上市公司,不需要融资。可多选，以","分隔
        jd = ''
        # 行业领域：移动互联网,电子商务,金融,企业服务,教育,文化娱乐,游戏,O2O,硬件...。可多选，以","分隔
        hy = ''

        ''' '''   ''' '''   ''' '''   ''' '''   ''' '''   ''' '''   ''' '''  ''' '''   ''' '''

        url = 'https://www.lagou.com/jobs/list_' + job + "?px=default"
        if city:
            url += '&city=' + city
        if district:
            url += '&district=' + district
        if biz_area:
            url += '&bizArea=' + biz_area
        if gj:
            url += '&gj=' + gj
        if gx:
            url += '&gx=' + gx
        if xl:
            url += '&xl=' + xl
        if jd:
            url += '&jd=' + jd
        if hy:
            url += '&hy=' + hy
        return url

    # 根据查询地址和关键字进行过滤
    def screening(self, url, kw):
        print(' url is %s , keyword is %s' % (url, kw))
        resp = requests.get(url, headers=self.headers)
        bs = BeautifulSoup(resp.text, 'html.parser')
        words = bs.find_all(class_='li_b_r')
        for word in words:
            print(word)


if __name__ == '__main__':
    lagou = LaGou()
    # 过滤关键字
    keyword = '健身'
    lagou.screening(lagou.get_url(), keyword)
