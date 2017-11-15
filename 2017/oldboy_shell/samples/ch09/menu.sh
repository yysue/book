#!/bin/sh
RED_COLOR='\x1b[1;31m'
GREEN_COLOR='\x1b[1;32m'
YELLOW_COLOR='\x1b[1;33m'
BLUE_COLOR='\x1b[1;34m'
RES_COLOR='\x1b[0m'

# 打印菜单cat实现
menu() {
cat <<END
=============================
1.apple
2.pear
3.banana
=============================
END
}

menu2() {
    cat <<-EOF # EOF前面是一个减号
    =============================
    1.apple
    2.pear
    3.banana
    =============================
	EOF # EOF前面是一个TAB，而不是4个空格
}
	
function usage() {
    echo "USAGE： $0 {1|2|3|4}"
    exit 1
}

function choose() {
    read -p "please select a num:" num
    case "$num" in
        1)
            echo -e "${RED_COLOR}apple${RES}"
            ;;
        2)
            echo -e "${GREEN_COLOR}pear${RES}"
            ;;
        3)
            echo -e "${YELLOW_COLOR}banana${RES}"
            ;;
        4)
            echo -e "${BLUE_COLOR}cherry${RES}"
            ;;
        *)
            usage
    esac
}

function main() {
    menu2
    choose
}

main
