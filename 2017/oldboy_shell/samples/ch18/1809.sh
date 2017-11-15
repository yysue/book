#!/bin/sh
if [ $# -ne 2 ]; then
    echo "Usage: $0 file dir"
    exit 1
fi

file=$1
dir=$2
for n in 111 112 113
do
    expect 1809.exp $file 192.168.5.$n $dir
done
