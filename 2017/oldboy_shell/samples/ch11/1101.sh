#!/bin/sh
echo "for=========================="
for ((i=0; i<3; i++))
do
    echo $i
done
echo "while=========================="
i=0
while ((i<3))
do
    echo $i
    ((i++))
done
