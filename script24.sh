#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
balance=5000
while true
do
  echo "----- ATM MENU -----"
  echo "1. Balance Enquiry"
  echo "2. Withdraw"
  echo "3. Deposit"
  echo "4. Exit"
  read -p "Enter your choice:" choice
case $choice in

    1)
        echo "Current Balance: Rs.$balance"
        ;;

    2)
        read -p "Enter withdrawal amount:" amount

          if [ $amount -le 0 ]
          then
             echo "Invalid amount!"
          elif [ $amount -gt $balance ]
          then
             echo "Insufficient Balance!"
          else
             balance=$((balance-amount))
             echo "Withdrawal Successful!"
             echo "Remaining Balance: Rs.$balance"
          fi
          ;;

   3)
         read -p "Enter deposit amount:" amount

          if [ $amount -le 0 ]
          then
             echo "Invalid amount!"
          else
             balance=$((balance+amount))
             echo "Deposit Successful!"
             echo "Current Balance: Rs.$balance"
          fi
          ;;

   4)
         echo "Thank you for using ATM!"
         break
         ;;

   *)
         echo "Invalid choice!"
         ;;
esac
done
