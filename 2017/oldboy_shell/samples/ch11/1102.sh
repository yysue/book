#!/bin/sh
echo "method01=============================="
i=5
for ((; i>0; i--))
do
    echo $i
done
echo "method02=============================="
for i in 5 4 3 2 1
do
    echo $i
done
echo "method03=============================="
for i in {5..1}
do
    echo $i
done
echo "method04=============================="
for i in `seq 5 -1 1`
do
    echo $i
done
