#!/bin/sh
for n in 111 112 113
do
    ssh root@192.168.5.$n uptime
done
