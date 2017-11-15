#!/bin/sh
arr=(I am oldboy teacher welcome to oldboy training class)
echo "for======================================="
for item in ${arr[*]}
do
    #echo -e "$item\t`echo $item|wc -L`"
    #echo -e "$item\t ${#item}"
    #echo -e "$item\t `expr length $item`"
    [ ${#item} -le 6 ] && echo $item
done

echo "awk1======================================="
echo ${arr[*]}|awk '{for(i=1;i<=NF;i++) if(length($i)<=6)print $i}'
echo "awk2======================================="
echo ${arr[*]}|xargs -n1|awk '{if(length($0)<=6)print $0}'
