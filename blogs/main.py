import web
import read

# 第一个是映射规则，第二个是具体匹配的类
urls = ('/(.*)', 'Hello')

# 指定模板所在的位置
render = web.template.render('templates/')


class Hello:
    @staticmethod
    def GET(uid):
        if not uid:
            uid = '000a530f461c'
        rc = read.ReadCount(uid)
        rc.count()
        # data是渲染模板的名称
        return render.show(rc)


if __name__ == "__main__":
    # Local Test
    # read_count = read.ReadCount('000a530f461c')
    # read_count.count()
    # Web
    app = web.application(urls, globals())
    app.run()
