#!/usr/bin/expect
if [ $# -ne 1 ]; then
    echo "Usage: $0 cmd"
    exit 1
fi

cmd=$1
for n in 111 112 113
do
    echo "$n==============================================="
    expect 1808.exp 192.168.5.$n "$cmd"
done
