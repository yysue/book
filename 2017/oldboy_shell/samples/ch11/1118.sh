#!/bin/sh

# 定义变量
path=/server/scripts
RETVAR=0

usage() {
    echo "Usage: $0 argv"
}

install_server() {
    if [ $# -ne 1 ]; then
        usage
        exit 1
    fi
    local RETVAR=0
    # 判断脚本是否可执行
    shpath=$path/${1}.sh
    if [ ! -x "$shpath" ];then
        echo "$shpath does not exist or can not be exec."
        exit 2
    else
        echo "start installing ${1}."
        $shpath
    fi
}

choose() {
    PS3="please select the num you want:"
    #menu=("install lamp" "install lnmp" "exit")
    #select name in "${menu[@]}"
    select name in "install lamp" "install lnmp" "exit"
    do
        case "$REPLY" in
            1)
                install_server lamp
                ;;
            2)
                install_server lnmp
                ;;
            3)
                exit 0
                ;;
            *)
                echo "the num you input must be {1|2|3}"
        esac
    done
}

#install_server $*
choose
