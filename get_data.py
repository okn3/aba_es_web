#-*- coding: utf-8 -*-
# -------------------------------------------------------------------------------
# Name:        	get_data.py
# Author:      	Utahka.A
# Created:     	??? ??th, 2015
# Last Date:   	Jul 31st, 2015
# Note:
#               (Jul 13th, 2015)
#               demo.py を少し書き直した。動作確認はできる環境にないのでしていません。
#               実機が現在手元にないので、Windowsに対応するのは明日以降になります。
#               (明日には対応します)
#
#               (Jul 31st, 2015)
#               動作確認済: COM番号はデバイスマネージャから見ることができる．
# -------------------------------------------------------------------------------
import serial
import time
import datetime
import sys

detect_id = 0
def send_data(de_id):
    global detect_id
    detect_id = de_id

def get_data():
    unixTime_new = 0.0
    unixTime_old = 0.0
    rowCSV = 0
    baudrate = 9600
    port = 'COM7'

    argv = sys.argv

    if len(argv) == 3:
        baudrate = argv[2]
    if len(argv) == 2:
        pass
    else:
        print("usage: $python get_data.py <username>")
        print("usage: $python get_data.py <username> <baudrate>")
        exit()

    # es のポートオープン
    # (UNIX系のOS)
    # コマンド $ls /dev/tty.* で mbed の名前を見れる．ボーレートは適宜変えること
    # com = serial.Serial('/dev/tty.usbmodem1422', baudrate)

    # es のポートオープン
    # (Windows)
    # COM番号は変わる可能性が高いので，適宜変更すること．
    com = serial.Serial(port, baudrate)

    day_info = datetime.datetime.today()

    # 元プログラム
    # csv_name = "lifilm_" + day_info.year + '_' + day_info.month + '_' + day_info.day + '_' + day_info.minute + '_' + day_info.second + '_' + argv[1] + ".csv"

    # python2対応
    csv_name = "lifilm" + '_' + str(day_info.year) + '_' + str(day_info.month) + '_' + str(day_info.day) + '_' + str(day_info.minute) + '_' + str(day_info.second) + '_' + str(argv[1]) + ".csv"
    fp1 = open(csv_name, 'a')

    while True:
        ###############################################
        #    送る文字列: 返ってくる文字列
        #            1: 従来通りのもの
        #            2: ad値のみ
        #            3: スイッチの押し込み状況
        #            4: ad平均化回数
        ###############################################
        time.sleep(5)
        com.write('1')                      # データ送信要求
        time.sleep(5)
        unixTime_new = int(time.time())     # UNIX秒を取得

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
        print("logging...")

# お試し用
if __name__ == "__main__":
    get_data()
