#!/bin/sh
export LAGNG="zh_CN.UTF-8"
echo "by RANDOM================================="
echo $RANDOM
echo "by openssl================================="
openssl rand -base64 8
openssl rand -base64 80
echo "by date================================="
date +%s%N
echo "by urandom================================="
head /dev/urandom|cksum
# /dev/urandom与/dev/random里一样，只是它是非阻塞的随机数发生器，读取操作不会产生阻塞
echo "by UUID================================="
cat /proc/sys/kernel/random/uuid
echo "by expect================================="
# yum install expect -y
mkpasswd -l 9 -d 2 -c 3 -C 3 -s 1
# -l 指定密码长度
# -d 指定密码中数字的数量
# -c 指定密码中小写字母的数量
# -C 指定密码中大写字母的数量
# -s 指定密码中特殊字符的数量

echo "使用md5进行统一格式化========================"
mkpasswd -l 9 -d 2 -c -C 3 -s 1|md5sum|cut -c 2-10
cat /proc/sys/kernel/random/uuid|md5sum|cut -c 2-10
head /dev/urandom|cksum|md5sum|cut -c 2-10
date +%s%N|md5sum|cut -c 2-10
openssl rand -base64 80|md5sum|cut -c 2-10
echo "test$RANDOM"|md5sum|cut -c 2-10
