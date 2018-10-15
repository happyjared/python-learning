import re
import sys
import csdn
import jianshu
import oschina


class Main(object):
    # init
    def __init__(self, file):
        self.title = ''
        self.content = ''
        self.category = ''
        self.tags = ''
        # OsChina的系统分类, 设个默认值
        self.osChina_sys_category = '编程语言'
        # CSDN的文章分类, 设个默认值
        self.csdn_article_category = '原创'
        # CSDN的博客分类, 设个默认值
        self.csdn_blog_category = '编程语言'
        self.read_file(file)

    # 读取MD中的title, content, self_category, self_tags, osChina_sys_category, csdn_article_category, csdn_blog_category
    def read_file(self, markdown_file):
        with open(markdown_file, 'r', encoding='UTF-8') as f:
            self.content = f.read().split('-->\n')[1]
            # 重置文件指针偏移量
            f.seek(0)
            for line in f.readlines():
                if self.judge('title: ', line):
                    self.title = line.split('title: ')[1].strip('\n')
                elif self.judge('self_category: ', line):
                    self.category = line.split('self_category: ')[1].strip('\n')
                elif self.judge('self_tags: ', line):
                    self.tags = line.split('self_tags: ')[1].strip('\n')
                elif self.judge('osChina_sys_category: ', line):
                    self.osChina_sys_category = line.split('osChina_sys_category: ')[1].strip('\n')
                elif self.judge('csdn_article_category: ', line):
                    self.csdn_article_category = line.split('csdn_article_category: ')[1].strip('\n')
                elif self.judge('csdn_blog_category: ', line):
                    self.csdn_blog_category = line.split('csdn_blog_category: ')[1].strip('\n')

    # 正则匹配判断, 获取的信息需保证其标志的唯一性
    @staticmethod
    def judge(rule, line):
        if re.search(rule, line) is None:
            return False
        if 'self.' in line:
            return False
        return True


if __name__ == '__main__':
    # sys.argv[0] = 当前文件名，这里是main.py
    # md_file = sys.argv[1]
    md_file = 'auto.md'
    print("Markdown File is ", md_file)

    timeout = 10
    main = Main(md_file)

    # 开源中国
    # osChina = oschina.OsChina()
    # osChina.post(main, timeout)

    # 简书
    jian_shu = jianshu.JianShu()
    jian_shu.post(main, timeout)

    # CSDN
    # csdn = csdn.CSDN()
    # csdn.post(main, timeout)
