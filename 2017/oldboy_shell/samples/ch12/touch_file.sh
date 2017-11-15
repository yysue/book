#!/bin/sh

trap "find /tmp -type f -name \"test_file_*\"|xargs rm -rf;exit" INT

while :
do
    touch /tmp/test_file_`date +%F_%T_%N`
    usleep 50000
done
