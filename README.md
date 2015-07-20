# aba 実験用プログラム(ブラウザ用)

## required module

* serial

* bottle

# how to use

1. CLIでプログラムの実行

`python index.py <name> <port>`

2. ブラウザからアクセス

`http://localhost:8080`

# 注意点

スレッド処理に伴ってctr+cでのプログラム停止ができない

## プログラムの停止方法

1. GUIからシステム終了をクリック

2. CLIで `killall python`
