#!/bin/sh
echo $1
[ `echo $1|grep -Ew "continue|break|return|exit"|wc -l` -eq 1 ] && echo ok || echo error
