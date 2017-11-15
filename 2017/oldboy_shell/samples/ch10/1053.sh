#!/bin/sh

balance=1000 # 初始余额(分)
price=15 # 1条短信的单价(分)

menu() {
cat <<EOF
    ===========================
    1. 充值
    2. 发短信
    3. 退出
    ===========================
EOF
}

recharge() {
    read -p "当前余额：$balance，现充值(分)：" recharge
    expr $recharge + 1 &>/dev/null
    [ $? -ne 0 ] && {
        echo "请输入正确的金额"
    } || {
        ((balance=recharge+balance))
        echo "充值后余额：$balance"
    }
}

send_msg() {
    if [ $balance -lt $price ]; then
        echo "当前余额：$balance，余额不足，不能发短信"
    else
        read -p "请输入要发送的短信内容：" msg
        echo "消费$price, 发送短信：$msg"
        ((balance=balance-price))
        echo "当前余额：$balance"
    fi
}

choose() {
    read -p "选择操作:" OPTION
    case "$OPTION" in 
        1)
            recharge
            ;;
        2)
            send_msg
            ;;
        3)
            echo "退出。。。"
            exit 0
            ;;
        *)
            echo "选择不正确，请重新输入{1|2|3}"
    esac
}

main() {
    while true
    do
        menu
        choose
    done
}

main
