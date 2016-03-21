#! /bin/bash
# Function:
#   test for(()) do done
# Hostory:
#   2016年 3月19日 星期六 10时13分48秒 CST kis
read -p "Please input your number:" number
$sum==0
for (( i=1; i<=$number; i=i+1 ))
do
    sum=$(($sum+$i));
done
echo $sum
