##################################################
##   .bashrc for Cygwin                         ##
##                                              ##
##################################################
#! /bin/bash

### Base Settings ################################
### ���ܸ�ɽ������
# �Ķ��ѿ� LANG �����ꤹ�뤳�Ȥˤ�ꡢɽ��������å������θ����
# �������ޤ��������Υץ��������ܸ������ռ�����ư��ޤ���
export LANG=ja_JP.SJIS
#export LANG=ja_JP.EUC

# �Ķ��ѿ� LESSCHARSET �ˤϡ�less ��ɽ�������Ѥ���ʸ�������ɤ���ꤷ�ޤ���
export LESSCHARSET=japanese-sjis
#export LESSCHARSET=euc-jp

# �Ķ��ѿ� NLSPATH �ˤϡ�catgets �����Ѥ����å������������ΰ��֤�
# ���ꤷ�ޤ���
export NLSPATH=/usr/share/locale/%L/%N

# ���������б�
unset nokanji
#set dspmbyte=sjis

### �����ॾ���������
export TZ=JST-09

### ����¾
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
## Cygwin �� diff �ϲ��ԥ����� LF �ʤΤǡ� CRLF �� diff ��������Ⱥ�ʬ�βս���� CRLF �ˤʤ�
## ���Τޤޤ��� patch �����Ƥ��ʤ��Τǡ� --binary ���ץ�����Ĥ��Ʋ��򤹤롣
## ���ѥå��ե�������ԥ����ɤ��Ѥ�����ˡ�⤢�뤬������� patch �����Ƥ��ե�����β��ԥ����ɤ����� LF ���Ѳ����Ƥ��ޤ�
alias patch="patch --binary"

### INIT #########################################
if [ -n ${DISPLAY} ]; then
    export DISPLAY=localhost:0.0
fi

if [ ! -n "${TERM}" ]; then
    TERM=cygwin
fi

### Prompt #######################################
PS1="\e[01;31m[\u@\H \W]\$ \e[00m" #�̾����prompt

#\a ASCII�Υ٥�ʸ����07�ˤ�ɽ������ʥӡ��ײ����Ĥ餹��
#\d ���� �� �� ���פη������㡧Fri Jan 5�ˤ����դ�ɽ������
#\e ASCII�Υ���������ʸ����033�ˤ�ɽ������
#\h �ۥ���̾�Τ����ǽ�Ρ�.�פޤǤ���ʬ��ɽ������
#\H �ۥ���̾��ɽ������
#\n ���Ԥ���
#\r ��������
#\s �������̾����ɽ������
#\t ���ߤλ����24���֤Ρ�HH:MM:SS�׷�����ɽ������
#\T ���ߤλ����12���֤Ρ�HH:MM:SS�׷�����ɽ������
#\@ ���ߤλ����12���֤Ρ�am/pm�׷�����ɽ������
#\u ���ߤΥ桼����̾��ɽ������
#\v bash�ΥС�������ɽ������
#\V bash�Υ�꡼����ɽ������
#\w  ���ߤκ�ȥǥ��쥯�ȥ�򡢥桼�����Υۡ���ǥ��쥯�ȥ꤫������Хѥ���ɽ������
#\W ���ߤκ�ȥǥ��쥯�ȥ��ɽ������
#\! ���Υ��ޥ�ɤ������ֹ��ɽ������
#\# ���Υ��ޥ�ɤΥ��ޥ���ֹ�ʸ��ߤΥ�����Υ��å������˼¹Ԥ��줿���ޥ�ɤΥ������󥹤ˤ�������֡ˤ�ɽ������
#\$ �¸�UID��0�ξ���#�Ȥʤꡢ����ʳ��ξ���$�Ȥʤ�
#\nnn 8�ʿ�nnn���б�����ʸ����ɽ������
#\\ �Хå�����å����ɽ������
#\[ ��ɽ��ʸ���Υ������󥹤򳫻Ϥ��롣�����Ȥäơ��ץ��ץ����ü�������楷�����󥹤������ळ�Ȥ��Ǥ���
#\] ��ɽ��ʸ���Υ������󥹤�λ����
#
# \e[xx<;xx<;xx>...>m
#    00 �� (������֤ء����򤷤ʤ�ü���⤢��)
#    01 �� bold(����)
#    04 �� ʸ���� blue (��������饤��)
#    05 �� �� (blink(�����ˤʤ�ü����¿��))
#    07 �� reverse(ȿž)
#    30 �� ʸ���� black
#    31 �� ʸ���� red
#    32 �� ʸ���� green
#    33 �� ʸ���� yellow
#    34 �� ʸ���� blue
#    35 �� ʸ���� magenta
#    36 �� ʸ���� cyan
#    37 �� ʸ���� white
#    40 �� �طʤ� black
#    41 �� �طʤ� red
#    42 �� �طʤ� green
#    43 �� �طʤ� yellow
#    44 �� �طʤ� blue
#    45 �� �طʤ� magenta
#    46 �� �طʤ� cyan
#    47 �� �طʤ� white

### [EOF] ###
