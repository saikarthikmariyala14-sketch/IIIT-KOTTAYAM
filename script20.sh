#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
while true
do
  read -p "Enter a positive number (0 to stop):" n
if [ $n -eq 0 ]
then
   break
fi
if [ $n -lt 0 ]
then
   echo "Invalid input!"
   continue
fi
sum=0
i=1
while [ $i -le $n ]
do
if [ $((i % 2)) -ne 0 ]
then
    sum=$((sum+i))
fi
    i=$((i+1))
done
echo "Sum of odd numbers: $sum"
if [ $((sum % 2)) -eq 0 ]
then
   echo "The sum is Even"
else
   echo "The sum is Odd"
fi
done
