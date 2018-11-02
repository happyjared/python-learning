# -*- coding:utf-8 -*-
# 爬取内容输入器


class HtmlOuter(object):
    def __init__(self):
        self.data = []

    def collect_data(self, data):
        if data is None:
            return
        self.data.append(data)

    def output_html(self):
        out = open('baike.html', 'w')
        out.write('<html>')
        out.write('<meta http-equiv="content-type" content="text/html;charset=utf-8">')
        out.write('<body>')
        out.write('<table>')

        for data in self.data:
            out.write('<tr>')
            out.write('<td>%s</td>' % data["url"].encode('utf-8'))
            out.write('<td>%s</td>' % data["title"].encode('utf-8'))
            out.write('<td>%s</td>' % data["summary"].encode('utf-8'))
            out.write('</tr>')

        out.write('</table>')
        out.write('</body>')
        out.write('</html>')
        out.close()
