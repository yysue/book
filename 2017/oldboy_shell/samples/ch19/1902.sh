#!/bin/sh

path="/oldboy"
cd $path
for filename in $(ls)
do
    #newfilename=`echo "$filename"|sed 's/oldboy/oldgirl/'|sed 's/html$/HTML/'`
    newfilename=`echo "$filename"|sed 's/oldboy.html/oldgirl.HTML/'`
    mv $filename $newfilename
done
