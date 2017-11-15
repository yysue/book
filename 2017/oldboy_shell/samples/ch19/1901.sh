#!/bin/sh

# [ -d "/oldboy/" ] && echo 'ok' || echo 'not exist'
if [ -d "/oldboy" ];then
    rm -rf /oldboy/*
else
    mkdir /oldboy
fi

while ((i<10))
do
    filename="`mkpasswd -l 15 -c 10|sed 's/[^a-z]//g'`_oldboy.html"
    #echo $filename
    touch "/oldboy/$filename"
    ((i++))
done

