#-*- coding: utf-8 -*-
# -------------------------------------------------------------------------------
# Name:        	get_data.py
# Author:      	Utahka.A
# Created:     	??? ??th, 2015
# Last Date:   	Jul 13th, 2015
# Note:         demo.py を少し書き直した。動作確認はできる環境にないのでしていません。
#               実機が現在手元にないので、Windowsに対応するのは明日以降になります。
#               (明日には対応します)
# -------------------------------------------------------------------------------
import serial
import time
import datetime
import sys
detect_id=0;
def send_data(de_id):
    global detect_id
    detect_id = de_id


def get_data():
    unixTime_new = 0.0
    unixTime_old = 0.0
    rowCSV = 0
    baudrate = 19200

    argv = sys.argv

    if len(argv) == 3:
        baudrate = argv[2]
    else:
        print("usage: $python get_data.py <username>")
        print("usage: $python get_data.py <username> <baudrate>")
        exit()

    # mbed のポートオープン
    # (unix系のOS)
    # コマンド $ls /dev/tty.* で mbed の名前を見れるので、ボーレートは適宜変えること
    # Windows未対応
    com = serial.Serial('/dev/tty.usbmodem1422', baudrate)
    day_info = datetime.datetime.today()
    # 元プログラム
    #csv_name = "lifilm_" + day_info.year + '_' + day_info.month + '_' + day_info.day + '_' + day_info.minute + '_' + day_info.second + '_' + argv[1] + ".csv"
    # python2対応
    csv_name = "lifilm" + '_' + str(day_info.year) + '_' + str(day_info.month) + '_' + str(day_info.day) + '_' + str(day_info.minute) + '_' + str(day_info.second) + '_' + str(argv[1]) + ".csv"
    while True:
        time.sleep(5)
        com.write('a')                      # データ送信要求 ('a' である必要性は無し)
        time.sleep(5)
        unixTime_new = int(time.time())     # unix秒を取得

        data = com.readline().split(',')

        if rowCSV != 0:
            timeStamp = time.strftime('%Y/%m/%d %H:%M:%S', time.localtime(unixTime_new))
            dt = unixTime_new - unixTime_old

            # csvへの書き込み行
            row = timeStamp + ',' + str(dt)  + ',' + data[0] + ',' + data[1] + ',' + data[2] + ',' + data[11] + ',' + str(detect_id) + '\n'
            try:
                fp1 = open(csv_name, 'a')
                fp1.write(row)
            except Eception as err:
                print str(type(err))
                print str(err)
            finally:
                fp1.close()

        rowCSV += 1
        unixTime_old = unixTime_new

        if detect_id != 0:
            send_data(0)
        print "logging..."
