#!/bin/bash

# -W timeout
# -c count
CMD="ping -W 2 -c 2"
IP="192.168.5."

for n in $(seq 254)
do
    {
    $CMD $IP$n &>/dev/null
    [ $? -eq 0 ] && echo "$IP$n is ok"
    }&   # 这样写什么意思？
         # Shell的并发检测功能，批量ping，快速返回结果
done
