#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
while true
do
echo "1. Generate Sequence"
echo "2. Exit"
read -p "Enter your choice:" choice

if [ $choice -eq 2 ]
then
    break
fi
if [ $choice -eq 1 ]
then
   read -p "Enter first number:" first
   read -p "Enter end number:" end
if [ $first -gt $end ]
then
    echo "Invalid range!"
    continue
fi
even=0
odd=0
while [ $first -le $end ]
do
  echo -n "$first "
if [ $((first % 2)) -eq 0 ]
then
   echo " - Even"
   even=$((even+1))
else
   echo " - Odd"
   odd=$((odd+1))
fi
   first=$((first+1))
done
echo "Even count: $even"
echo "Odd count: $odd"
else
echo "Invalid choice!"
fi
done
