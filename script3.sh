#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
count=1
while [ $count -le 5 ]
do
    echo "Enter purchase amount:"
    read amount
    if [[ $amount -le 9 ]]
    then
        echo "Invalid input"
        continue
    fi
    if [ $amount -gt 2000 ]
    then
        discount=$((amount * 10 / 100))

    elif [ $amount -gt 1000 ]
    then
        discount=$((amount * 5 / 100))
    else
        discount=0
    fi
    final=$((amount - discount))
    echo "Purchase amount: $amount"
    echo "Discount: $discount"
    echo "Final bill: $final"
    count=$((count + 1))
done
echo "All 5 customers processed"

