#!/bin/bash

##################################
#                                #               
# Search for regular users in OS # 
#                                #
##################################


IFS="
"
cat /etc/passwd > users

echo "USER         DIR_HOME       UID"

while read -r line
do

  LINE_UID=$(echo "$line" | cut -d: -f3)

  if(( "$LINE_UID" >= 1000  &&  "$LINE_UID" <= 6000 ))

    then

      USER=$(echo "$line" | cut -d: -f1)
      DIR_HOME=$(echo "$line" | cut -d: -f6)
      echo   "$USER      $DIR_HOME    $LINE_UID    "
      
    continue

  fi
done < users

rm users