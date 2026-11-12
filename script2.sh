#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
total=0
read -p "Enter the number of consumers:" n
for ((i=1; i<=$n; i++))
do
read -p "Enter electricity units for consumer $i:" units
    if [ $units -lt 0 ]
    then
        echo "Invalid units!"
        break;
    fi
    if [ $units -le 100 ]
    then
        bill=$((units * 2))
    elif [ $units -le 200 ]
    then
        bill=$((100 * 2 + (units - 100) * 3))
    else
        bill=$((100 * 2 + 100 * 3 + (units - 200) * 5))
    fi
    echo "Consumer $i Bill: Rs.$bill"
    total=$((total + bill))
done
echo "Total bill collected: Rs.$total"
