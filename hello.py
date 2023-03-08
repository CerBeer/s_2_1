def wsgi_application(environ, start_responce):
    data1 = environ['QUERY_STRING'].split('&')
    data2 = '\n'.join(data1)
    data = bytes(data2, encoding='utf-8')
    headers = [('Content-type', 'text/plain; charset=utf-8')] 
    start_response('200 OK', headers)
    return [data]
