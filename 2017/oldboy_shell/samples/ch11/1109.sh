#!/bin/sh
sum=0
for i in {1..100}
do
    ((sum+=i))
done
echo $sum
