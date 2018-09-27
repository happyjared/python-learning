import base64

import requests
from captcha.image import ImageCaptcha


def genCaptcha():
    image = ImageCaptcha()
    num = 'ABCD'
    image.write(num, 'out.png')


def identifyCaptcha():
    pass


def urlToBase64(url):
    return 'data:image/png;base64,{}'.format(base64.b64encode(requests.get(url).content).decode("UTF-8"))


def getCaptchaCode(img_base64):
    api = 'https://way.jd.com/showapi/checkcode_ys?typeId=34&appkey={}'
    app_key = '434d4ead6f95e54e8a290b0ab40e9b1f'
    data = 'img_base64={}'.format(img_base64)
    resp = requests.post(api.format(app_key), data=data).json()
    result = resp.get('result')
    if result:
        body = result.get('showapi_res_body')
        code = body.get('Result')
        return code


if __name__ == '__main__':
    genCaptcha()
