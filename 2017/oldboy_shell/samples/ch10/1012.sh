#!/bin/sh
# 后台运行脚本
# sh 1012.sh &
# nohup 1012.sh &

while [ 1 ] # []里面两端要有空格
do
    uptime >> /tmp/uptime.log
    sleep 2
done
