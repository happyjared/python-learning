import re
import requests

# Match: [xxx:xx]
pattern = re.compile('\[\S*]\s*')


def get_lyric(song_id):
    """通过网易云音乐的song id获得歌曲歌词

    :param song_id:
    :return:
    """

    api = 'https://api.imjad.cn/cloudmusic/?id={0}&type=lyric'.format(song_id)
    resp = requests.get(api).json()
    lrc = resp.get('lrc')
    if lrc:
        lyric = lrc.get('lyric')
        return re.sub(pattern, '', lyric)
