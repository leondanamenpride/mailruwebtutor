def app(environ, start_responce):
    status = "200 OK"
    headers = [
        ("Content-Type", 'text/plain')
    ]
    start_responce(status, headers)
    return "\r\n".join(environ['QUERY_STRING'].split("&"))
