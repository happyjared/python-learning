def is_emoji(text):
    """判断消息是否为表情
    
    :param text: 
    :return: True or False
    """
    return text.startswith('[') and text.endswith(']')


def is_all_chinese(text):
    """判断text是否全部为中文
    
    :param text: 
    :return: True or False
    """

    return u'\u4e00' <= text <= u'\u9fff'
