#!/bin/sh

a=$1
b=$2

usage() {
    echo "Usage: $0 num1 num2"
}

main() {
    # 参数个数判断
    [ $# -ne 2 ] && {
       usage
       exit 1
    }

    # 参数类型判断
    expr $a + 10 &>/dev/null
    RETVAL1=$?
    expr $b + 10 &>/dev/null
    RETVAL2=$?
    [ $RETVAL1 -eq 0 -a $RETVAL2 -eq 0 ] || {
        usage
        exit 2
    }

    # 参数大小比较
    if [ $a -gt $b ]; then
        echo "$a>$b"
    elif [ $a -lt $b ]; then
        echo "$a<$b"
    else
        echo "$a=$b"
    fi
}

main $*
