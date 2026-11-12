#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
correct_user="student"
correct_pass="1234"
attempt=1
while [ $attempt -le 5 ]
do
  read -p "Enter username:" username
  read -p "Enter password:" password
if [ -z "$username" ] || [ -z "$password" ]
then
   echo "Empty input! Enter both username and password."
elif [ "$username" = "$correct_user" ] && [ "$password" = "$correct_pass" ]
then
   echo "Login Successful! Access Granted."
   break
else
   echo "Invalid username or password!"
fi
attempt=$((attempt+1))
done
if [ $attempt -gt 5 ]
then
    echo "Login Failed! Maximum attempts reached."
fi
