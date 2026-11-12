#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
while true
do
echo "1. Sum of Natural Numbers"
echo "2. Check Prime Number"
echo "3. Factorial"
echo "4. Exit"
read -p "Enter your choice:" ch
case $ch in
  1)
      read -p "Enter a number:" n
      if [ $n -gt 0 ]
      then
          sum=0
      for ((i=1; i<=n; i++))
      do
        sum=$((sum+i))
      done
      echo "Sum = $sum"
      else
         echo "Enter a positive number"
      fi
      ;;

  2)
      read -p "Enter a number:" n
      if [ $n -le 1 ]
      then
          echo "Not a Prime Number"
      else
          count=0
      for ((i=2; i<n; i++))
      do
        if [ $((n%i)) -eq 0 ]
        then
           count=1
           break
        fi
      done
      if [ $count -eq 0 ]
      then
         echo "Prime Number"
      else
         echo "Not a Prime Number"
      fi
      fi
      ;;

  3)
      read -p "Enter a number:" n
      if [ $n -ge 0 ]
      then
          fact=1

      for ((i=1; i<=n; i++))
      do
        fact=$((fact*i))
      done
      echo "Factorial = $fact"
      else
      echo "Invalid input"
      fi
      ;;

  4)
      echo "Exiting program..."
      break
      ;;

  *)
      echo "Invalid choice! Try again."
      ;;
esac
done
