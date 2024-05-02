#! /bin/bash
## bash 環境設定ファイル (主に MSYS 用)
## /etc/profile … 全ユーザーに適用される設定ファイル
## ~/.bash_profile … ログイン時に読み込まれる
## ~/.bash_login … ログイン時、 .bash_profile がなければ読み込まれる
## ~/.profile … ログイン時、 .bash_profile 及び .bash_login がなければ読み込まれる
## ~/.bashrc … bash を起動する際に読み込まれる
## ~/.bash_logout … ログアウト時に読み込まれる

### 日本語表示設定
# 環境変数 LANG を設定することにより、表示されるメッセージの言語を
# 指定出来ます。一部のプログラムは日本語処理を意識して動作します。
export LANG=ja_JP.UTF-8
#export LANG=ja_JP.SJIS
#export LANG=ja_JP.EUC

### 共通設定 #########################################
export EDITOR=win-emacsclient

### bashrc を読み込む ################################
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi
