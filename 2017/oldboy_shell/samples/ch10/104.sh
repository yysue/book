#!/bin/sh
# 猜数字游戏
export LANG="zh_CN.UTF-8"
total=0 # 初始化猜的次数
NUM=$((RANDOM%61)) # 取随机数1~60
echo "当前苹果的价格是每斤$NUM元"
echo "=============================="
#usleep 1000000
usleep 10000
clear
echo '这苹果多少钱一斤啊？
请猜0~60的数字'

check_input() {
    read -p "请输入你的价格：" PRICE
    expr $PRICE+1 &>/dev/null
    if [ $? -ne 0 ]; then
        echo "别逗我了，快猜数字"
        check_input
    fi
}

guess() {
    ((total++))
    if [ $PRICE -eq $NUM ]; then 
        echo "猜对了，就是$NUM元"
        if [ $total -le 3 ]; then
            echo "一共猜了$total次，太牛了。"
        elif [ $total -gt 3 -a $total -le 6 ]; then
            echo "一共猜了$total次，次数有点多，加油啊。"
        elif [ $total -gt 6 ]; then
            echo "一共猜了$total次，行不行，猜了这么多次"
        fi
        exit 0
    elif [ $PRICE -gt $NUM ]; then
        echo "嘿嘿，要不你用这个价买？"
        echo "再给你一次机会，请继续猜："
        check_input
    else
        echo "太低太低"
        echo "再给你一次机会，请继续猜"
        check_input
    fi
}

main() {
    check_input
    while true
    do
        guess
    done
}

main
