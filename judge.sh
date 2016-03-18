#! /bin/bash
# Function:
#   test command and [ ] practise
# Hostory:
#   2016年 3月18日 星期五 10时14分39秒 CST kis

#test a file
test -f "/etc/passwd" && echo "/etc/passed is exist"
#test two Strings is equal
str1="testString"
str2="testString"
test $str1 = $str2 && echo "two string is equal"
#test a dir
test -d "/etc/" && echo "/etc/ is a dir"
#test a string is empty
str3="testString1"
test -z $str3 && echo "str3 is empty"
#many conditions judge
test $str1 = $str2 -a $str3 = "testString1" && echo "yes" || echo "no" #and
test $str1 = $str3 -o $str3 = "testString1" && echo "yes" || echo "no" #or
test ! $str1 = $str3 #not
name="yqc"
[ $name == "yqc" ] && echo "yqc" && exit
