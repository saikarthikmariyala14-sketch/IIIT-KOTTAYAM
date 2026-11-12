#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
while true
do
    echo "Enter a positive integer:"
    read num
    if ! [[ "$num" =~ ^[0-9]+$ ]]
    then
        echo "Invalid input"
        continue
    fi
    if [ "$num" -eq 0 ]
    then
        echo "Program ended."
        break
    fi
    original=$num
    reverse=0
    while [ "$num" -gt 0 ]
    do
        digit=$((num % 10))
        reverse=$((reverse * 10 + digit))
        num=$((num / 10))
    done
    echo "Reversed number: $reverse"
    if [ "$original" -eq "$reverse" ]
    then
        echo "$original is a Palindrome."
    else
        echo "$original is not a Palindrome."
    fi
done

