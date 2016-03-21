#! /bin/bash
# Function:
#   clac between your birthday and today days
# Hostory:
#   2016年 3月19日 星期六 10时33分28秒 CST kis
read -p "Please your birthday(yyyymmdd):" birthday
birth_date=$(echo $birthday | grep "[0-9]\{4\}[0-1]\{1\}[0-9]\{1\}[0-3]\{1\}[0-9]\{1\}")
if [ "$birth_date" == "" ]; then
    echo "Your input is not right" && exit 0
fi
declare -i birth_date=`date -j -f "%Y%m%d" $birthday +%s`
declare -i today=`date +%s`
declare -i diffSocends=$((($birth_date-today) / (3600*24)))
echo "last $diffSocends days"
