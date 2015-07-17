# -*- coding: utf-8 -*-
from bottle import route, run, template, static_file
from get_data import send_data, get_data
import threading
def main():
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
            send_data(1)
        elif id == 2:
            msg="便"
            send_data(2)
        else:
            msg="なし"
            send_data(3)
        return template('input',msg=msg)


    run(host='localhost', port=8080)

index_th = threading.Thread(target=main, name = "intdex_th")
get_th = threading.Thread(target=get_data, name = "get_th")
index_th.start()
get_th.start()