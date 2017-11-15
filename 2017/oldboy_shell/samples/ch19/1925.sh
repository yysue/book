#!/bin/bash

# 编写长方形字符
export LANG=zh.CN.UTF-8

w=20
h=10

# 判断表达式中对变量进行计算$(($a+$b))
for ((j=1;j<=h;j++))
do
    for ((i=1;i<=w;i++))
    do
        #[ $j -eq 1 -o $i -eq 1 -o $j -eq $h ] && echo -n "*"
        #[ $j -gt 1 -a $j -lt $h -a $i -lt $w ] && echo -n " "
        #[ $j -gt 1 -a $j -lt $h -a $i -lt $w ] && echo -n "*"
        echo -n "*"
        [ $i -eq $w ] && echo ""
    done
done

