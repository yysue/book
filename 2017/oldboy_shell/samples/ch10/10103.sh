#!/bin/sh

#grep "ESTABLISHED" netstat.log|awk -F "[ : ]+" '{++S[$(NF-2)]}END{for(key in S) print S[key], key}'|sort -nr -k1|head -5

file=$1

# 判断扩展名
judge_ext() {
    if expr "$file" : ".*\.log" &>/dev/null # 判断扩展名是否以.log结尾
        then
        : # 冒号表示什么都不做
    else
        echo "Usage: $0 xxx.log"
        exit 1
    fi
}

# 对IP去重排序，重写到/tmp/tmp.log
ip_count() {
    grep "ESTABLISHED" netstat.log|awk -F "[ : ]+" '{++S[$(NF-2)]}END{for(key in S) print S[key], key}'|sort -nr -k1|head -5 >/tmp/tmp.log
}

# 设置防火墙
ipt() {
    local ip=$1
    if [ `iptables -L -n|grep "$ip"|wc -l` -lt 1 ]; then
        iptables -I INPUT -s $ip -j DROP
        echo "$line is dropped" >>/tmp/droplist_$(date +%F).log
    fi

}

main() {
    judge_ext $file
    while true
    do
        ip_count
        while read line
        do
            ip=`echo $line|awk '{print $2}'`
            count=`echo $line|awk '{print $1}'`
            if [ $count -ge 1 ]; then
                ipt $ip
            fi
        done </tmp/tmp.log
        sleep 180
    done
}

main
