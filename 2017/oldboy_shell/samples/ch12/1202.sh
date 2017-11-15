#!/bin/sh
[ -f /etc/init.d/functions ] && . /etc/init.d/functions || exit 1

RETVAL=0
op() {
    if [ "$1" == "del" ];then
        list=`echo {16..1}`
    else
        list=`echo {1..16}`
    fi
    for ip in $list
    do
        if [ $ip -eq 10 ]; then
            continue
        fi
        ip addr $1 10.0.2.$ip/24 dev eth1 label eth1:$ip &>/dev/null
        RETVAL=0
        if [ $RETVAL -eq 0 ]; then
            action "$1 $ip" /bin/true
        else
            action "$1 $ip" /bin/false
        fi
    done
    return $RETVAL
}

case "$1" in
    start)
        op add
        RETVAL=$?
        ;;
    stop)
        op del
        RETVAL=$?
        ;;
    restart)
        op del
        sleep 2
        op add
        RETVAL=$?
        ;;
    *)
        echo "Usage: $0 {start|stop|restart}"
esac
exit $RETVAL
