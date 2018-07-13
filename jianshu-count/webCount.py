import web
import readCount

# 第一个是映射规则，第二个是具体匹配的类
urls = ('/(.*)', 'Hello')

# 指定模板所在的位置
render = web.template.render('templates/')


class Hello:
    @staticmethod
    def GET(uid):
        if not uid:
            uid = '000a530f461c'
        read_count = readCount.ReadCount(uid)
        read_count.count()
        # data是渲染模板的名称
        return render.data(read_count)


if __name__ == "__main__":
    app = web.application(urls, globals())
    app.run()
