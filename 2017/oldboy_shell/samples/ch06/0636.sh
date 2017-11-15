#!/bin/sh
path=/server/scripts
[ ! -d "$path" ] && {
    echo "$path不存在"
    exit 1
}

menu() {
cat <<EOF
===================================
    1.[install java]
    2.[install tomcat]
    3.[install mysql]
    4.[exit]
===================================
EOF
}

choose() {
    read -p "please input the num you want:" num
    expr $num + 1 &>/dev/null
    [ $? -ne 0 ] && {
        echo "the num you input must be {1|2|3|4}"
        return 1
    }
    case "$num" in
        1)
            echo "install java..."
            ;;
        2)
            echo "install tomcat..."
            ;;
        3)
            echo "install mysql..."
            ;;
        4)
            exit 0
            ;;
        *)
            echo "the num you input must be {1|2|3|4}"
    esac
}

main() {
    while true
    do
        menu
        choose
    done
}

main
