#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
password="1234"
attempt=1
while [ $attempt -le 3 ]
do
  read -p "Enter password:" input
if [ "$input" = "$password" ]
then
    echo "Access Granted!"
    break
else
    echo "Incorrect Password!"
    attempt=$((attempt+1))
fi
done
if [ $attempt -gt 3 ]
then
    echo "Access Denied!"
fi
