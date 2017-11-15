#!/bin/bash
CMD="nmap -sP"
IP="192.168.5.0/24"
CMD2="nmap -sS"
$CMD $IP|awk '/Nmap scan report for/{print $NF}'
