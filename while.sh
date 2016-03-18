#! /bin/bash
# Function:
#   while test
# Hostory:
#   2016年 3月18日 星期五 16时20分37秒 CST kis
function while_test () {
    str=$1
    while [ "$str" != "yes" -a "$str" != "YES" ]
    do
        read -p "Please input Yes/yes: " str
        if [ "$str" == "q" ]; then
            exit 0
        fi
    done
    echo "your input is right"
}
read -p "Please input Yes/yes: " str
while_test $str
