#!/bin/sh

for i in {1..32767}
do
    echo "`echo $i|md5sum` $i" >>/tmp/md5.log
done
