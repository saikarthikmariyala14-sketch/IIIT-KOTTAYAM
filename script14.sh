#!/bin/bash
#M.SAI KARTHIK
#2026BCS008
#BATCH3
while true
do
    read -p "Enter a +ve number: " p

    if [ $p -eq 0 ]
    then
        echo "Thank you"
        break
    fi

    if [ $p -lt 0 ]
    then
        echo "Invalid input"
        continue
    fi
    if [ $((p % 2)) -eq 0 ]
    then
        echo "$p is Even"
    else
        echo "$p is Odd"
    fi
    echo "Multiplication table of $p:"
    for ((i=1; i<=10; i++))
    do
        echo "$p x $i = $((p * i))"
    done
done

