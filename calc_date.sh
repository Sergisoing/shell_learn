#! /bin/bash
# Function:
#   calc date
# Hostory:
#   2016年 3月18日 星期五 15时30分18秒 CST kis
read -p "Please input date(Format: YYYYmmdd):" date
date_d=$(echo "$date" | grep "[0-9]\{8\}")
if [ "$date_d" == "" ]; then
    echo "the date formar is not right" && exit 0
fi
declare -i date_dem=`date -j -f %Y%m%d $date_d +%s`
declare -i date_now=`date +%s`
declare -i date_diff=$(($date_dem - $date_now))
declare -i days=$(($date_diff / (3600 * 24)))
echo $days
