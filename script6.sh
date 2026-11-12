#M.SAI KARTHIK
#2026BCS0082
#BATCH3
#!/bin/bash
even=0
odd=0
while [ 1 ]
do
    echo "Enter a number:"
    read n
    if [ $n -eq 0 ]
    then
        break
    fi
    if [ $n -lt -10000 ] || [ $n -gt 10000 ]
    then
        echo "Number out of range"
        continue
    fi
    if [ $((n % 2)) -eq 0 ]
    then
        echo "Even number"
        even=$((even + 1))
    else
        echo "Odd number"
        odd=$((odd + 1))
    fi
done
echo "Total Even numbers: $even"
echo "Total Odd numbers: $odd"
