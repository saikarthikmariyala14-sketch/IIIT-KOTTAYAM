#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
total=0
while true
do
  read -p "Enter overdue days (-1 to stop):" days
if [ $days -eq -1 ]
then
   break
fi
if [ $days -lt 0 ]
then
   echo "Invalid number of days!"
   continue
fi
if [ $days -eq 0 ]
then
   echo "Book returned on time."
   fine=0
elif [ $days -le 5 ]
then
   echo "Book is overdue."
   fine=$((days * 2))
else
   echo "Book is overdue."
   fine=$((5 * 2 + (days - 5) * 5))
fi
echo "Fine: Rs.$fine"
total=$((total+fine))
done
echo "Total Fine Collected: Rs.$total"
