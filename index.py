# -*- coding: utf-8 -*-
from bottle import route, run, template, static_file

@route('/test')
def test():
    return "test"

@route('/')
def root():
    return template('input',msg="")

@route('/detect/<id:int>')
def detect(id):
    #処理書く
    if id == 1:
        msg = "便"
    elif id == 2:
        msg = "尿"
    else:
        msg = "何もない"
    return template('input',msg=msg)


"""
データ取得のプラグラムを書く
"""

run(host='localhost', port=8080)
