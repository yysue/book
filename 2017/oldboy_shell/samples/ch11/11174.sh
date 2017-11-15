#!/bin/sh

# 修改默认提示
PS3="please select a num from menu:"

select name in start stop restart
do
    echo "you select is $REPLY: $name"
done
