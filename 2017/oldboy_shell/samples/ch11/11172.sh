#!/bin/sh
arr=(lucy luxi sanji suolong)
select name in "${arr[@]}"
do
    echo $name
done
