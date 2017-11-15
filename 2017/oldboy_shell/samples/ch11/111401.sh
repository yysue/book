#!/bin/sh

user_prefix="hello"
pass_file="/tmp/pass.log"
cat /dev/null >$pass_file
for num in `seq -w 10`
do
    username=$user_prefix$num
    pass="`echo test$RANDOM|md5sum|cut -c 3-11`"
    echo "$username:$pass" >>$pass_file
    useradd $username
done
chpasswd <$pass_file
cat $pass_file
