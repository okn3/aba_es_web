# -*- coding: utf-8 -*-
from bottle import route, run, template, static_file

@route('/test')
def test():
    return "test"

@route('/')
def root():
    return template('input',msg="")

@route('/<id:int>')
def detect(id):

    #処理書く
    
    if id == 1:
        msg="尿"
    elif id == 2:
        msg="便"
    else:
        msg="なし"
    return template('input',msg=msg)


run(host='localhost', port=8080)
