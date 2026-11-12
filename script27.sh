#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
low=0
normal=0
high=0
while true
do
  read -p "Enter water level percentage (-1 to stop):" level
if [ $level -eq -1 ]
then
   break
fi
if [ $level -lt 0 ] || [ $level -gt 100 ]
then
   echo "Invalid water level!"
elif [ $level -lt 20 ]
then
   echo "Low Level"
   low=$((low+1))
elif [ $level -le 80 ]
then
   echo "Normal Level"
   normal=$((normal+1))
else
   echo "High Level"
   high=$((high+1))
fi
done
echo "Low readings: $low"
echo "Normal readings: $normal"
echo "High readings: $high"
