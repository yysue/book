#!/bin/sh

usage() {
    echo "Usage: $0 {break|continue|exit|return}"
    exit 1
}

check() {
    if [ $# -ne 1 ];then
        usage
    fi
    
    if [ `echo $1|grep -Ew "break|continue|exit|return"|wc -l` -ne 1 ];then
        usage
    fi
}

test() {
    for ((i=0; i<6; i++))
    do
        if [ $i -eq 3 ]; then
            if [ "$1" == "return" ];then
                $1 9
            else
                $1
            fi
        fi
        echo $i
    done
    echo "test of func is end"
}

fortest() {
    test $*
    
    func_ret=$?
    if [ `echo $*|grep return|wc -l` -eq 1 ]; then
        echo "return's exit status:$func_ret"
    fi
    echo "ok"
}

main() {
    check $*
    fortest $*
}

main $*
