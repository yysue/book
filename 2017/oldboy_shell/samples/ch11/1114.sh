#!/bin/sh

# 生成00~10
# seq -w 10
# echo {00..10}

# 通过无交互设置密码
#useradd testuser
#echo 123456|passwd --stdin testuser

# 随机数
# echo $RANDOM
# echo $RANDOM|md5sum|cut -c 5-12

. /etc/init.d/functions
user_prefix="ysai"
pass_file="/tmp/user.log"
cat /dev/null >$pass_file
for num in `seq -w 15`
do
    username="${user_prefix}$num"
    useradd $username
    pass="`echo "test$RANDOM"|md5sum|cut -c3-11`"
    #echo "$pass"|passwd --stdin $username
    echo "$pass"|passwd --stdin $username &>/dev/null &&\
    echo -e "user:${username}\tpasswd:$pass" >>$pass_file
    if [ $? -eq 0 ]; then
        action "$username is ok" /bin/true
    else
        action "$username is fail" /bin/false
    fi
done
echo "---------------add ten user successfully------------------------"
cat $pass_file
tail -10 /etc/passwd
