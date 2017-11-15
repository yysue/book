#!/bin/sh

menu() {
    cat <<-EOF
    ====================================
    1) 192.168.111
    2) 192.168.112
    3) 192.168.113
    4) 192.168.114(没有这个电脑)
    5) exit
    ====================================
	EOF
}

# 禁用快捷键
trapper() {
    trap "" INT QUIT TSTP TERM HUP
}

choose() {
    read -p "select one option:" OPTION
    case "$OPTION" in
        1)
            ssh tb@192.168.5.111
            ;;
        2)
            ssh tb@192.168.5.112
            ;;
        3)
            ssh tb@192.168.5.113
            ;;
        4)
            echo "IP无效"
            ;;
        5)
            exit 0
            ;;
        *)
    esac
}

main() {
    trapper
    while true
    do
        menu
        choose
    done
}

main
