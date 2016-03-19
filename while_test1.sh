#! /bin/bash
# Function:
#   test while calc 1 to 100 sum
# Hostory:
#   2016年 3月18日 星期五 16时33分18秒 CST kis
read -p "Please input a number: " num
is_num=$(echo $num | grep "[0-9]*")
echo $is_num
while [ "$is_num" == "" ]
do
    read -p "Your input is wrong ,Please again input a number: " num
    is_num=$(echo $num | grep "[0-9]*")
done
declare -i i=1
declare -i sum=0
while [ "$i" != "101" ]
do
    sum=$(($sum+$i))
    i=$(($i+1))
done
echo $sum
