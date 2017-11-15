#!/bin/sh
s1="oldboy123"
s2="123"
echo "sed========================================"
# 删除一个字符串中的所有数字，看字符中的长度是否为0
[ -n "`echo $s1|sed 's/[0-9]//g'`" ] && echo "$s1:char" || echo "$s1:int"
[ -n "`echo $s2|sed 's/[0-9]//g'`" ] && echo "$s2:char" || echo "$s2:int"
echo "sed========================================"
# 使用变量的子串替换
[ -z "`echo "${s1//[0-9]/}"`" ] && echo "$s1:int" || echo "$s1:char"
[ -z "`echo "${s2//[0-9]/}"`" ] && echo "$s2:int" || echo "$s2:char"
echo "sed========================================"
# 把字符串中的非数字部分删除，看结果是否等于字符串本身
[ -n "$s1" -a "$s1" = "${s1//[^0-9]/}" ] && echo "$s1:int" || echo "$s1:char"
[ -n "$s2" -a "$s2" = "${s2//[^0-9]/}" ] && echo "$s2:int" || echo "$s2:char"
echo "sed========================================"
expr $s1 + 1 &>/dev/null
[ $? -eq 0 ] && echo "$s1:int" || echo "$s1:char"
expr $s2 + 1 &>/dev/null
[ $? -eq 0 ] && echo "$s2:int" || echo "$s2:char"
echo "sed========================================"
[[ $s1 =~ ^[0-9]+$ ]] && echo "$s1:int" || echo "$s1:char"
[[ $s2 =~ ^[0-9]+$ ]] && echo "$s2:int" || echo "$s2:char"
