#!/bin/sh
usage() {
    echo "Usage: $0 url"
}

monitor() {
    while true
    do
        if [ `curl -o /dev/null --connect-timeout 5 -s -w "%{http_code}" $1|egrep -w "200|301|302"|wc -l` -ne 1 ]; then
            echo "$1 is error"
            # echo "$1 is error."|main -s "$1 is error." ch001ao@qq.com
        else
            echo "$1 is ok"
        fi
        sleep 10
    done
}

main() {
    if [ $# -ne 1 ]; then 
        usage
        exit 1
    fi
    monitor $*
}

main $*
