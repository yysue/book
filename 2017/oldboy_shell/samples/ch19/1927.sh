#!/bin/bash

h=10

for ((y=3;y<=h;y++))
do
    for ((x=1;x<=h-y;x++))
    do
        echo -n " "
    done
    for ((x=1;x<=$((2*$y-1));x++))
    do
        echo -n "*"
    done
    echo
done
