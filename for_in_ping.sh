#! /bin/bash
# Function:
#   test for in
# Hostory:
#   2016年 3月18日 星期五 17时16分38秒 CST kis
network="192.168.8"
for host in $(seq 100 200)
do
    echo "ping $network.$host"
    ping -W 1 -c 1 $network.$host &> /dev/null && result=0 || result=1
    if [ "0" == "$result" ]; then
        echo "$network.$host is up"
    fi
done
