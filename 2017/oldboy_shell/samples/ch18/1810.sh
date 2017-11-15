#!/bin/sh
for n in 111 112 113
do
    expect sshcopyid2.exp ~/.ssh/id_dsa.pub 192.168.5.$n
done
