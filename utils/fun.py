import time
import random


def word_shape(word='dog', randint=random.randint(1, 10)):
    shape = '\n'.join(
        [' '.join([(word[(x - y) % len(word)] if ((x * 0.1) ** 2 + (y * 0.2) ** 2 - 1) ** randint - (x * 0.1) ** 2 * (
                y * 0.2) ** 3 <= 0 else ' ') for x in range(-13, 13)]) for y in range(6, -6, -1)])
    return shape


def input_shape():
    words = input('Please input the words you want to say!:')
    for item in words.split():
        # 要想实现打印出字符间的空格效果，此处添加：item = item+' '
        letter_list = []  # letter_list是所有打印字符的总list，里面包含y条子列表list_x
        for y in range(12, -12, -1):
            list_x = []  # list_X是X轴上的打印字符列表，里面装着一个String类的letters
            letters = ''  # letters即为list_X内的字符串，实际是本行要打印的所有字符
            for x in range(-30, 30):  # *是乘法，**是幂次方
                expression = ((x * 0.05) ** 2 + (y * 0.1) ** 2 - 1) ** 3 - (x * 0.05) ** 2 * (y * 0.1) ** 3
                if expression <= 0:
                    letters += item[(x - y) % len(item)]
                else:
                    letters += ' '
            list_x.append(letters)
            letter_list += list_x
        print('\n'.join(letter_list))
        time.sleep(1.5)
