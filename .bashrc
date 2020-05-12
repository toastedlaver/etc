##################################################
##   .bashrc for Cygwin                         ##
##                                              ##
##################################################
#! /bin/bash

### Base Settings ################################
### 日本語表示設定
# 環境変数 LANG を設定することにより、表示されるメッセージの言語を
# 指定出来ます。一部のプログラムは日本語処理を意識して動作します。
export LANG=ja_JP.SJIS
#export LANG=ja_JP.EUC

# 環境変数 LESSCHARSET には、less が表示に利用する文字コードを指定します。
export LESSCHARSET=japanese-sjis
#export LESSCHARSET=euc-jp

# 環境変数 NLSPATH には、catgets が利用するメッセージカタログの位置を
# 設定します。
export NLSPATH=/usr/share/locale/%L/%N

# 漢字入力対応
unset nokanji
#set dspmbyte=sjis

### タイムゾーンの設定
export TZ=JST-09

### その他
export MAKE_MODE=unix
export PAGER=less
export HISTCONTROL="erasedups"

### PATH #########################################
#PATH=/usr/local/sbin:/usr/sbin:/sbin:$PATH
#PATH=/usr/local/bin:/usr/X11R6/bin:/usr/bin:/bin:$PATH
#PATH=${PATH}:/cygdrive/c/Program_Files/ak2pr/bin

### Alias ########################################
#alias ls="ls -F -N --color=auto"
alias ls="ls -F --color=auto --show-control-chars"
alias la="ls -aF"
alias ll="ls -lF"
alias l="ls -laF"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias mea="meadow &"
alias em="emacs"
## Cygwin の diff は改行コード LF なので、 CRLF の diff 作成すると差分の箇所だけ CRLF になる
## そのままだと patch が当てられないので、 --binary オプションをつけて回避する。
## ※パッチファイル改行コードを変える方法もあるがそれだと patch を当てたファイルの改行コードが全て LF に変化してしまう
alias patch="patch --binary"

### INIT #########################################
if [ -n ${DISPLAY} ]; then
    export DISPLAY=localhost:0.0
fi

if [ ! -n "${TERM}" ]; then
    TERM=cygwin
fi

### Prompt #######################################
PS1="\e[01;31m[\u@\H \W]\$ \e[00m" #通常使用prompt

#\a ASCIIのベル文字（07）を表示する（ビープ音を鳴らす）
#\d 「曜 日 月 日」の形式（例：Fri Jan 5）で日付を表示する
#\e ASCIIのエスケープ文字（033）を表示する
#\h ホスト名のうち最初の「.」までの部分を表示する
#\H ホスト名を表示する
#\n 改行する
#\r 復帰する
#\s シェルの名前を表示する
#\t 現在の時刻を24時間の「HH:MM:SS」形式で表示する
#\T 現在の時刻を12時間の「HH:MM:SS」形式で表示する
#\@ 現在の時刻を12時間の「am/pm」形式で表示する
#\u 現在のユーザー名を表示する
#\v bashのバージョンを表示する
#\V bashのリリースを表示する
#\w  現在の作業ディレクトリを、ユーザーのホームディレクトリからの絶対パスで表示する
#\W 現在の作業ディレクトリを表示する
#\! このコマンドの履歴番号を表示する
#\# このコマンドのコマンド番号（現在のシェルのセッション中に実行されたコマンドのシーケンスにおける位置）を表示する
#\$ 実効UIDが0の場合に#となり、それ以外の場合に$となる
#\nnn 8進数nnnに対応する文字を表示する
#\\ バックスラッシュを表示する
#\[ 非表示文字のシーケンスを開始する。これを使って、プロンプト中に端末の制御シーケンスを埋め込むことができる
#\] 非表示文字のシーケンスを終了する
#
# \e[xx<;xx<;xx>...>m
#    00 … (初期状態へ、理解しない端末もある)
#    01 … bold(太字)
#    04 … 文字を blue (アンダーライン)
#    05 … ？ (blink(太字になる端末が多い))
#    07 … reverse(反転)
#    30 … 文字を black
#    31 … 文字を red
#    32 … 文字を green
#    33 … 文字を yellow
#    34 … 文字を blue
#    35 … 文字を magenta
#    36 … 文字を cyan
#    37 … 文字を white
#    40 … 背景を black
#    41 … 背景を red
#    42 … 背景を green
#    43 … 背景を yellow
#    44 … 背景を blue
#    45 … 背景を magenta
#    46 … 背景を cyan
#    47 … 背景を white

### [EOF] ###
