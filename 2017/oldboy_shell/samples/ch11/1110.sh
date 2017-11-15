#!/bin/sh
for ((i=0; i<5; i++))
do
    curl baidu.com &>>/tmp/curl.log
done
