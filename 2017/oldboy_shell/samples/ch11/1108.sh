#!/bin/sh
COLOR='\x1b[47;30m'
RES='\x1b[0m'
for ((j=1; j<10; j++))
do
    i=1
    for ((; i<10 && i<=j; i++))
    do
        echo -ne "${COLOR}${i}x${j}=$((i*j))$RES\t"
    done
    echo
done
