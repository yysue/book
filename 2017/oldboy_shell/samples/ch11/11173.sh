#!/bin/sh
select name in `ls`
do
    echo $name
    cat $name
done
