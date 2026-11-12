#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
  year=0
leap=0
nonleap=0
while true
do
read -p "Enter an year:" year
if [[ $year -eq  0 ]] 
then
break 
fi
if [[ $(( year % 100 )) -eq 0 ]];then
  if [[ $(( year % 400 )) -eq 0 ]];then
   (( leap++ ))
   fi
  if [[ $(( year % 400 )) -ne 0 ]];then
   (( nonleap++ ))
   fi
elif [[ $(( year % 4 )) -eq 0 ]];then
 (( leap++))
else (( nonleap++ ))
fi
done
echo "leap years:" "$leap"
echo "non leap years:" "$nonleap"
