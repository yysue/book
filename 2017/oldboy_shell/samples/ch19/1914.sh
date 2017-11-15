#!/bin/sh

#export LANG=en
RETVAL=0
CHECK_PATH="/var/html/www/"
[ -e $CHECK_PATH ] || {
    echo "$CHECK_PATH not exist"
    echo 1
}
ZHIWEN_PATH="/tmp/zhiwen.db.ori"
WENJIAN_PATH="/tmp/wenjian.db.ori"
ERR_LOG="/tmp/check.log"
[ -e $ZHIWEN_PATH ] || {
    echo "$ZHIWEN_PATH not exist"
    echo 1
}
[ -e $WENJIAN_PATH ] || {
    echo "$WENJIAN_PATH not exist"
    echo 1
}

echo "----------------------$(date +%F_%T) check start" >>$ERR_LOG
echo "------check file content" >>$ERR_LOG
# judge file content
md5sum -c --quiet $ZHIWEN_PATH &>>$ERR_LOG
RETVAL=$?

echo "------check file count" >>$ERR_LOG
# judge file count
find $CHECK_PATH -type f >/opt/wenjian.db_curr.ori
diff /tmp/wenjian.db* &>>$ERR_LOG

if [ $RETVAL -eq 0 -o `diff /tmp/wenjian.db*|wc -l` -ne 0 ]; then
    echo "send email "
    echo "`uname -n` $(date +%F) err"
else
    echo "Sites dir is ok"
fi
echo "----------------------$(date +%F_%T) check end" >>$ERR_LOG
