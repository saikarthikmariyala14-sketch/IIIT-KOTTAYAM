#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
while true
do
read -p "Enter a positive number (0 to stop):" num
if [ "$num" -eq 0 ]
then
   break
fi
if [ "$num" -lt 0 ]
then
   echo "Invalid input!"
   continue
fi
temp=$num
sum=0
count=0
while [ $temp -gt 0 ]
do
  rem=$((temp % 10))
  sum=$((sum + rem))
  count=$((count + 1))
  temp=$((temp / 10))
done
echo "Sum of digits: $sum"
echo "Number of digits: $count"
if [ $count -eq 1 ]
then
   echo "Single-digit number"
elif [ $count -eq 2 ]
then
   echo "Two-digit number"
else
   echo "Larger number"
fi
done
