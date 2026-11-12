#!/bin/bash
#M.SAI KARTHIK
#2026BCS008
#BATCH3
day=0
while true
do
read -p "Enter a day:" day
if [[ $day -eq 0 ]];then
break
fi
case $day in
     1) echo "monday"
         echo "week day"
        ;;
     2) echo "tuesday"
         echo "week day"
         ;;
     3) echo "wednesday"
         echo "week day"
        ;;
     4) echo "thursday"
          echo "week day"
         ;;
     5) echo "friday"
        echo "week day"
         ;;
     6) echo "saturday"
        echo "week end"
        ;;
     7) echo "sunday"
        echo "week end"
         ;;
     *) echo "invalid num entered"
  esac
done
