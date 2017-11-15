#!/bin/sh
read -p "please input two nums:" a b

# 非空判断
[ -z "$a" -o -z "$b" ] && {
    echo "please input two num again."
    exit 1
}

# 类型判断
expr $a + 10 &>/dev/null
RETVAL1=$?
expr $b + 10 &>/dev/null
RETVAL2=$?
[ $RETVAL1 -eq 0 -a $RETVAL2 -eq 0 ] || {
    echo "please input two num again."
    exit 2
}

# 比较大小
if [ $a -gt $b ]; then
    echo "$a>$b"
elif [ $a -lt $b ]; then
    echo "$a<$b"
else
    echo "$a=$b"
fi
