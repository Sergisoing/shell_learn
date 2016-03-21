#! /bin/bash
# Function:
#   test select while
# Hostory:
#   2016年 3月21日 星期一 15时38分49秒 CST kis
list="one two three four five quit"
select item in $list
do
    if [ "$item" == "quit" ]; then
        exit
    elif [ "$item" == "" ]; then
        echo "$REPLY is not valid"
    else 
        echo $item 
        echo $REPLY
    fi
done
