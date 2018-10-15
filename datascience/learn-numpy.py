import numpy as np

print("NumPy版本:", np.__version__)
print()

np_array = np.array([0, 1, 2])
print("秩1轴3一维数组: ", np_array, isinstance(np_array, np.ndarray))
print()

np_array = np.array([(1, 2, 3), (4, 5, 6)])
print("二维数组: ")
print(np_array)
print()

np_array = np.zeros((3, 2))
print("全为0的二维数组")
print(np_array)
print()

np_array = np.ones((2, 3, 4))
print("全为1的三维数组")
print(np_array)
print()

np_array = np.arange(8)
print("0-7的一位数组")
print(np_array)
print()

np_array = np.arange(start=10, stop=20.5, step=1.5)
print("步长1.5的一维数组")
print(np_array)
print()

np_array = np.arange(9).reshape(3, 3)
print("将一维数组重塑为二维数组")
print(np_array)
print()

np_array = np.eye(3)
print(np_array)

np_array = np.linspace(1, 10, num=5)
print(np_array)

np_array = np.random.rand(3, 2)
print(np_array)
# 获得指定范围内的一个整数
np_array = np.random.randint(10, 15)
print(np_array)
np_array = np.random.randint(100, size=(3, 3))
print(np_array)

np_array = np.fromfunction(function=lambda i, j: i + j, shape=(3, 3))
print(np_array)

np_array_a = np.array([1, 3, 4])
np_array_b = np.arange(1, 4)
print(np_array_a)
print(np_array_b)
np_array = np_array_a + np_array_b
print(np_array)

np_array = np_array_a - np_array_b
print(np_array)

np_array = np_array_a * np_array_b
print(np_array)

np_array = np_array_a / np_array_b
print(np_array)

np_array = np_array_a % np_array_b
print(np_array)

np_array_a = np.array([[1, 2], [3, 4]])
np_array_b = np.array([[5, 6], [7, 8]])
print(np_array_a)
print(np_array_b)
np_array = np_array_a + np_array_b
print(np_array)

np_array = np_array_a - np_array_b
print(np_array)

np_array = np_array_a * np_array_b
print(np_array)

np_array = np_array_a / np_array_b
print(np_array)

np_array = np_array_a % np_array_b
print(np_array)

np_array = np.dot(np_array_a, np_array_b)
print(np_array)

np_array = np.mat(np_array_a) * np.mat(np_array_b)
print(np_array)

np_array = np_array_a * 2
print(np_array)

np_array = np_array_a.T
print(np_array)
