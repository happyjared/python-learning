from PIL import Image
import pytesseract

pytesseract.pytesseract.tesseract_cmd = "E:\\jared\\Python\\Tesseract-OCR\\tesseract.exe"


def recognize_code_image(image_file):
    # 打开图片
    image = Image.open(image_file)
    # image.show()
    # 转为灰度图片
    image_grey = image.convert('L')
    # image_grey.show()
    # 二值化处理
    table = []
    for i in range(256):
        if i < 140:
            table.append(0)
        else:
            table.append(1)
    image_bi = image_grey.point(table, '1')
    # image_bi.show()
    image_bi.save('C:\\Users\\CFL\\Desktop\\captcha1.png')
    # 识别验证码
    verify_code = pytesseract.image_to_string(image_bi)

    return verify_code


if __name__ == '__main__':
    print(recognize_code_image('C:\\Users\\CFL\\Desktop\\captcha.png'))
