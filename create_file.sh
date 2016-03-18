#! /bin/bash
# Function: 
#   create shell script, It auto input the create_time and the author
# Hostory: 
#   2016/03/17 kis First Release
# First Param: 
#   the script Name
# second Param:
#   the function src

# test the param
test $# -ne 2 && echo "Your param is not right" && exit 0
# test the file exist
test -f $1 && echo "The file is already exist" && exit 0  
touch $1
chmod +x $1
echo "#! /bin/bash" >> $1
echo "# Function:" >> $1
echo "#   $2" >> $1
echo "# Hostory:" >> $1
date=$(date)
echo "#   $date kis" >> $1
