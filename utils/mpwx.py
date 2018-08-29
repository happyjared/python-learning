import requests

app_id = 'wx4d28e7b90a4a76c8'
app_secret = 'b49dfbfbd5bb3beb9ec7be7fe2d322e2'


def getAccessToken():
    """获取并返回Access Token"""

    api = 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential' \
          '&appid={}&secret={}'.format(app_id, app_secret)
    resp = requests.get(api).json()
    print(resp)

    # {"access_token":"ACCESS_TOKEN","expires_in":7200}
    return resp.get('access_token')


def sendTemplateMsg(template_id='Dq7j-k5JoDtTHifxgNIJV0nDpl32MHtXYmUEbBFR4E0'):
    """发送模板消息"""
    access_token = getAccessToken()
    if access_token:
        data = {
            "touser": "op68p0juJB2In1ZjEs6K3duLBQaM",
            "template_id": template_id,
            "topcolor": "#FFF628"
        }
        api = 'https://api.weixin.qq.com/cgi-bin/message/template/send?' \
              'access_token={}'.format(access_token)
        resp = requests.post(api, json=data).json()
        print(resp)
