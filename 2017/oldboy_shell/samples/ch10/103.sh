#!/bin/sh
n=100
sum=0
while [ $n -ge 0 ]
do
    ((sum+=$n))
    ((n--))
done
echo "sum=$sum"
