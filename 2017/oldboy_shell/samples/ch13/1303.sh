#!/bin/sh
arr=(
qingming
duanwu
wuyi
liuyi
qiyi
bayi
jiushi
shiyi
)

for item in ${arr[*]}
do
    echo $item
done

arr2=($(ls /))
for item in ${arr2[*]}
do
    echo $item
done
