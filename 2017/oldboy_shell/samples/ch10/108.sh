#!/bin/sh
echo "method 1==============================="
exec <$1
num=0
while read line
do
    echo "$num $line"
    ((num++))
done
echo "method 2==============================="
num=0
cat $1|while read line
do
    echo "$num $line"
    ((num++))
done
echo "method 3==============================="
num=0
while read line
do
    echo "$num $line"
    ((num++))
done <$1
