#M.SAI KARTHIK
#2026BCS0082
#BATCH3
#!/bin/bash
largest=0
count=0
for ((i=1; i<=10; i++))
do
    echo "Enter integer $i:"
    read n
    if [ $n -lt -1000 ] || [ $n -gt 1000 ]
    then
        echo "Invalid number! Only -1000 and 1000 are valid."
        continue
    fi
    if [ $count -eq 0 ]
    then
        largest=$n
    elif [ $n -gt $largest ]
    then
        largest=$n
    fi
    count=$((count + 1))
done
if [ $count -eq 0 ]
then
    echo "No valid number entered."
else
    echo "Largest number is: $largest"
fi
