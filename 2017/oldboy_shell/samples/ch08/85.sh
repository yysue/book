#!/bin/sh
# 判断任意指定的URL是否存在异常

# 帮助函数
function usage() {
    echo $"Usage:$0 url"
    exit 1
}

# 检查URL函数
function check_url() {
    wget --spider -q -o /dev/null --tries=1 -T 5 $1
    if [ $? -eq 0 ]; then
        echo "$1 is yes."
    else
        echo "$1 is no."
    fi
}

# main函数
function main() {
    # 判断传参个数是否为1个
    if [ $# -ne 1 ]; then
        usage
    fi
    # 用wget进行访问测试，$1是函数的参数
    check_url $1
}

# 这里的$*就是把命令行接收的所有参数作为函数参数传给函数内部
main $*
