#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
prime=0
composite=0
while (true)
do
read -p "Enter a number:" num
if [ $num -eq -1 ]
then
   break
fi
if [ $num -lt 2 ]
then
   echo "Invalid number!"
continue
fi
count=0
for ((i=2; i<num; i++))
do
if [ $((num % i)) -eq 0 ]
then
    count=1
    break
fi
done
if [ $count -eq 0 ]
then
   echo "$num is Prime"
   prime=$((prime+1))
else
   echo "$num is Composite"
   composite=$((composite+1))
fi
done

echo "Prime numbers: $prime"
echo "Composite numbers: $composite"
