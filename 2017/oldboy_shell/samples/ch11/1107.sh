#!/bin/sh
LANG=en
# 先把3级别的服务都设置为开机不启动
for svr in `chkconfig|grep 3:on|awk '{print $1}'`;do chkconfig --level 3 $svr off;done

for svr in crond network sshd sysstat rsyslog; do chkconfig --level 3 $svr on;done
# chkconfig --list|grep 3:on
chkconfig|grep 3:on

# 把3级别已开启但是不需要开启的查出来
# chkconfig|grep "3:on"|awk '{print $1}'|grep -vE "crond|network|sshd|rsyslog|sysstat"
