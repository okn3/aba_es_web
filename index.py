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
    def detect(id)
        send_data(id)
 """if id == 1:
            send_data(1)
        elif id == 2:
            send_data(2)
        else:
            send_data(3)
            """
        return template('input')
    run(host='localhost', port=8080)

index_th = threading.Thread(target=main, name = "intdex_th")
get_th = threading.Thread(target=get_data, name = "get_th")
index_th.start()
get_th.start()
