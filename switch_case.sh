#! /bin/bash
# Function:
#   test switch case
# Hostory:
#   2016年 3月18日 星期五 16时04分52秒 CST kis
case $1 in
    "one")
        echo "one"
        ;;
    "two")
        echo "two"
        ;;
    "three")
        echo "three"
        ;;
    "")
        echo "you only have three choices (one two three)"
        ;;
esac
