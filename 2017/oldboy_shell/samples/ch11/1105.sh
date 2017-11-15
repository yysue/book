#!/bin/sh

rm -rf ~/test/*
touch ~/test/stu_1101{00..20}_finished.jpg

cd ~/test

# sed
echo "sed======================================"
for filename in `ls *_finished.jpg`
do
    #echo $filename|sed 's/_finished//'
    mv $filename `echo $filename|sed 's/_finished//'`
done

# awk
echo "awk======================================"
ls|awk -F "." '{print "mv",$0,$1"_finished."$2}'|sh

# rename
echo "rename======================================"
rename "_finished" "" *.jpg
