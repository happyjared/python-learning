from faker import Factory
from sqlalchemy import or_
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, String, Integer, create_engine

# 创建对象的基类:
Base = declarative_base()


# 定义User对象并继承上述基类
class User(Base):
    # 表名(继承自Base的类必须要定义__tablename__)
    __tablename__ = 'tb_user'

    # 表字段
    id = Column(Integer, primary_key=True, autoincrement=True, comment="自增主键")
    email = Column(String(64), nullable=False, index=True, comment="邮箱")
    username = Column(String(64), nullable=False, comment="用户名")
    password = Column(String(64), comment="密码")

    def __str__(self) -> str:
        return "User(id：{} email：{} username：{} password：{})".format(self.id, self.email,
                                                                     self.username, self.password)


# 创建数据库连接（'数据库类型+数据库驱动名称://用户名:密码@ip地址:端口/数据库名'）
conn =  "postgresql+psycopg2://postgres:<password>@<ip>:5432/postgres"
engine = create_engine(conn, encoding='UTF-8', echo=False)  # echo=True表示输出执行日志,默认为False

# 删除映射数据表(如果存在)
Base.metadata.drop_all(engine)
# 创建映射数据表(如果不存在)
Base.metadata.create_all(engine)

# 创建session对象
Session = sessionmaker(bind=engine)
session = Session()

""" CREATE """

# 创建User对象
user = User(username="张三", password="zs", email="123@zs.com")
# 添加到session
session.add(user)
# 提交到数据库:
session.commit()

# 创建faker工厂对象
faker = Factory.create()
# 利用faker创建多个User对象
fake_users = [User(
    username=faker.name(),
    password=faker.word(),
    email=faker.email(),
) for i in range(5)]
# 添加到session
session.add_all(fake_users)
# 保存到数据库:
session.commit()

""" RETRIEVE/GET/FIND """

# 主键id查找
user = session.query(User).get(3)
print(user)
# 添加过滤条件
user = session.query(User).filter(User.id != 1).first()
print(user)
# one()方法查找不存在或返回结果集不止一个对象会抛异常，first()对应则返回None或首条数据
user = session.query(User).filter_by(id=4).one()
print(user)
# 模糊搜索
user = session.query(User).filter(User.username.like('%张%')).first()
print(user)
user = session.query(User).filter(User.username.notlike('%张%')).first()
print(user)
# And and Or
user = session.query(User).filter(User.id == 1, User.username.like('%张%')).one()
print(user)
user = session.query(User).filter(or_(User.id == 2, User.username.like('%张%'))).first()
print(user)
# 查找全部
users = session.query(User).all()
for u in users:
    print(u)

""" UPDATE """

user = session.query(User).get(1)
user.username, user.password = '李四', 'ls'
session.add(user)
session.commit()

""" DELETE """
user = session.query(User).get(6)
session.delete(user)
session.commit()

session.close()
