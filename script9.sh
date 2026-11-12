#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
invalid=0
valid=0
p=0
for i in {1..10}
do
read -p "enter a number:" p
if [[ p -ge 18 && p -lt 120 ]];then
(( valid++ ))
fi
if [[ p -lt 18 && p -ge 0 ]];then
(( invalid++ ))
fi
done
echo "Total Invalid candidates:" "$invalid"
echo "Total valid candidates:" "$valid"

