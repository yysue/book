#!/bin/sh
file=$1
while true
do
    awk '{print $1}' $1|grep -v "^$"|sort|uniq -c >/tmp/tmp.log # 去空行排序重写到一个临时文件里
    exec </tmp/tmp.log # 读取临时文件
    while read line
    do
        ip=`echo $line|awk '{print $2}'`
        count=`echo $line|awk '{print $1}'`
        if [ $count -gt 500 ] && [ `iptables -L -n|grep "$ip"|wc -l` -lt 1 ]; then
            iptables -I INPUT -s $ip -j DROP
            echo "$line is dropped" >>/tmp/droplist_$(date +%F).log
        fi
    done
    sleep 3600
done
