# -*- coding: utf-8 -*-
#↑日本語で書いたコメントでエラーにならないように書く
#参考HP https://ti-tomo-knowledge.hatenablog.com/entry/2018/05/10/085747
#jsonのmoduleをimportする
import json
#新しいディレクトリを作る関数のmoduleをimportする
import os
#ディレクトリをコピペするための関数のmoduleをimportする
import shutil

#コピー先フォルダを作る
#★現在地を取得する
#★タイムスタンプを取得する
#★現在地+タイムスタンプをディレクトリ名とする
#https://note.nkmk.me/python-os-mkdir-makedirs/
#↑参考HP
PasteDirPath = 'C:\Python27\PasteDir'
os.mkdir(PasteDirPath)

#ファイルを開く 変数1 = open('読み込みたいjsonファイルのパス','r')
json_open = open('local.json', 'r')
#開いたファイルをJSONとして読み込む 変数2 = json.load(変数1)
json_load = json.load(json_open)

CopyDirName = list()
PasteDirName = list()

for i in range(2):
    print('i=' + str(i))
    CopyDirName.append(json_load['Lang' + str(i)]['CopyDir'])
    PasteDirName.append(json_load['Lang' + str(i)]['PasteDir'])
    print(CopyDirName[i])
    print(PasteDirName[i])
    
	#コピー元ディレクトリからコピー元をコピーして、コピー先ディレクトリにコピー元をリネームしてペースト
    shutil.copytree(str('C:\\Python27\\TestCopyDir\\' + CopyDirName[i]), str('C:\\Python27\\PasteDir\\' + PasteDirName[i]))