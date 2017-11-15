#!/bin/sh
sum=0 # 初始化资源大小为0
exec <$1 # 将传参$1重定向给exec
while read line
do
    size=`echo $line|awk '{print $10}'`
    expr $size+1 &>/dev/null
    if [ $? -ne 0 ]; then
        continue
    fi
    ((sum=sum+size))
done
echo "${1}:total:${sum}bytes = `echo $((${sum}/1024))`KB"
