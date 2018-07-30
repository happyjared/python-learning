a = "hello"
b = "hello"
print(a is b)  # 输出 True
print(a == b)  # 输出 True

a = 'hello world'
b = 'hello world'
print(a is b)  # 输出 False
print(a == b)  # 输出 True

a = 'ab' + 'c' is 'abc'
print(a)  # 输出 True
ab = 'ab'
b = ab + 'c' is 'abc'
print(b)  # 输出 False

a = [1, 2, 3]
b = [1, 2, 3]
print(a is b)  # 输出 False
print(a == b)  # 输出 True

a = [1, 2, 3]
b = a
print(a is b)  # 输出 True
print(a == b)  # 输出 True

a = ["I", "love", "Python"]
b = a[:]
print(a is b)  # 输出 False
print(a == b)  # 输出 True
print(a[0] is b[0])  # 输出 True
print(a[0] == b[0])  # 输出 True

a = 1
b = 1
print(a is b)  # 输出 True
print(a == b)  # 输出 True

a = 320
b = 320
print(a is b)  # 输出 False
print(a == b)  # 输出 True
