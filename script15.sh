
#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
while true
do
    read -p "Enter a number between 0 and 20 (-1 to stop): " p
    if [[ $p -eq -1 ]]
    then
        break
    fi
    if [[ $p -lt 0 || $p -gt 20 ]]
    then
        echo "Enter a number between 0 and 20"
        continue
    fi
    fact=1
    for ((i=1; i<=p; i++))
    do
        fact=$((fact * i))
    done
    if [[ $((fact % 2)) -eq 0 ]]
    then
        echo "Even"
    else
        echo "Odd"
    fi
    echo "Factorial is $fact"

done


