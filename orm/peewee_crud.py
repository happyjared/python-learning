from peewee import *
from faker import Factory
from datetime import datetime

# Create an instance of a Database
db = PostgresqlDatabase(database="postgres", host="localhost",
                        port=5432, user="postgres", password="password", )


# Define a model class
class User(Model):
    # If none of the fields are initialized with primary_key=True,
    # an auto-incrementing primary key will automatically be created and named 'id'.
    id = PrimaryKeyField()
    email = CharField(index=True, max_length=64)
    username = CharField(unique=True, max_length=32)
    password = CharField(null=True, max_length=64)
    createTime = DateTimeField(column_name="create_time", default=datetime.now)

    class Meta:
        database = db
        table_name = 'tb_user'
        # If Models without a Primary Key
        # primary_key = False

    def __str__(self) -> str:
        return "User(id：{} email：{} username：{} password：{} createTime: {})".format(
            self.id, self.email, self.username, self.password, self.createTime)


db.connect()
db.drop_tables([User])
db.create_tables([User])

""" CREATE """

# 创建User对象
user = User(email="zs@123.com", username="张三", password="zs")
# 保存User
user.save()

# 创建faker工厂对象
faker = Factory.create()
# 利用faker创建多个User对象
fake_users = [{
    'username': faker.name(),
    'password': faker.word(),
    'email': faker.email(),
} for i in range(5)]
# 批量插入
User.insert_many(fake_users).execute()

""" RETRIEVE/GET/FIND """

user = User().select().where(User.id != 1).get()
print(user)
user = User.select().where(User.username.contains("张")).get()
print(user)
count = User.select().filter(User.id >= 3).count()
print(count)
users = User.select().order_by(User.email)
for u in users:
    print(u)

""" UPDATE """

effect_count = User.update({User.username: "李四", User.email: "ls@163.com"}).where(User.id == 1).execute()
print(effect_count)

""" DELETE """

effect_count = User().delete_by_id(6)
print(effect_count)
effect_count = User.delete().where(User.id >= 4).execute()
print(effect_count)
