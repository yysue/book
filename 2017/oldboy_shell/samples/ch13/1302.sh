#!/bin/sh
arr=($(seq 10))
echo "for============================="
for ((; i<${#arr[*]}; i++))
do
    echo ${arr[i]}
done

echo "for============================="
for i in ${arr[*]}
do
    echo $i
done

echo "while============================="
i=0
while ((i<${#arr[*]}))
do
    echo ${arr[i]}
    ((i++))
done

