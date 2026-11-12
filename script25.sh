#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
total=0
small=0
large=0
while true
do
  read -p "Enter quantity sold (0 to stop):" qty

if [ $qty -eq 0 ]
then
   break
fi

if [ $qty -lt 0 ]
then
   echo "Invalid quantity!"
   continue
fi
total=$((total+qty))
if [ $qty -le 5 ]
then
   echo "Small Transaction"
   small=$((small+1))
else
   echo "Large Transaction"
   large=$((large+1))
fi
done
echo "Total quantity sold: $total"
echo "Small transactions: $small"
echo "Large transactions: $large"
