#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
price=100
count=0
while [ $count -lt 10 ]
do
  read -p "Enter fuel quantity in litres:" litres
if [ $litres -le 0 ]
then
   echo "Invalid quantity!"
   continue
fi
amount=$((litres * price))
if [ $litres -gt 20 ]
then
    discount=$((amount * 5 / 100))
    amount=$((amount-discount))
    echo "5% Discount Applied!"
fi
echo "Final Bill: Rs.$amount"
count=$((count+1))
echo "Valid Transactions: $count"
done
echo "10 Transactions Completed!"
