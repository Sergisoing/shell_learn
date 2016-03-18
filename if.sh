#! /bin/bash
# Function:
#   if function test
# Hostory:
#   2016年 3月18日 星期五 11时15分26秒 CST kis
if [ "$1" == "hello" ]; then
    echo "hello world";
elif [ "$1" == "" ]; then
    echo "You must input the first Params!!!"
else 
    echo "The Param must be 'hello'"  
fi
