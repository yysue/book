#!/bin/sh
# chkconfig: 2345 40 98
# 设定2345级别，开机第40位启动脚本，关机第98位关闭脚本
# chmod +x nginxd
# cp -a nginxd /etc/init.d/nginxd
# /etc/init.d/nginxd
# chkconfig --add nginxd
# chkconfig|grep nginxd

path=/application/nginx/sbin
pid=/application/nginx/logs/nginx.pid
RETVAL=0
. /etc/init.d/functions

start() {
    if [ ! -f $pid ]; then
    #if [ `netstat -lntup|grep nginx|wc -l` -eq 0 ]; then
        $path/nginx
        RETVAL=$?
        if [ $RETVAL -eq 0 ]; then
            action "nginx is started" /bin/true
            return $RETVAL
        else
            action "nginx is started" /binfalse
            return $RETVAL
        fi
    else
        echo "nginx is running"
        return 0
    fi
}

stop() {
    if [ -f $pid ]; then 
        $path/nginx -s stop
        RETVAL=$?
        if [ $RETVAL -eq 0 ]; then 
            action "nginx is stopped" /bin/true
            return $RETVAL
        else
            action "nginx is stopped" /bin/false
            return $RETVAL
        fi
    else
        echo "nginx is no running"
        return $RETVAL
    fi
}

usage() {
    echo $"USAGE: $0 {start|stop|restart}"
    exit 1
}

choose() {
    case "$1" in 
        start)
            start
            RETVAL=$?
            ;;
        stop)
            stop
            RETVAL=$?
            ;;
        restart)
            stop
            sleep 1
            start
            RETVAL=$?
            ;;
        *)
            usage
    esac
}

main() {
    choose $*
    exit $RETVAL
}

main $*
