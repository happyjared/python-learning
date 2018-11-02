import mitmproxy.http


def request(flow: mitmproxy.http.HTTPFlow):
    """
        The full HTTP request has been read.
    """

    flow.request.headers["User-Agent"] = "Chrome/66.0.3497.100"

    pretty_url = flow.request.pretty_url
    print(pretty_url)


def response(flow: mitmproxy.http.HTTPFlow):
    """
        The full HTTP response has been read.
    """

    content = flow.response.content
    print(content)
