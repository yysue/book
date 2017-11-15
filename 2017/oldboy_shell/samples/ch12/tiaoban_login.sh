#!/bin/sh
# tiaoban_login.sh
# cp tiaoban_login.sh /etc/profile.d/
#echo $UID
#echo $USER
[ $UID -ne 0 -a $UID -ne 500 ] &&\
    . /server/scripts/tiaoban.sh
