#!/bin/sh
[ ! "$#" -eq 1  ] && {
    echo "USAGE:$0 num"
    exit 1
}
i="$1"
while [ $i -gt 0 ]
do 
    echo $i
    ((i--))
done
