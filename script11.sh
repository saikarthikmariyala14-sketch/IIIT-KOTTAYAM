#!/bin/bash
#M.SAI KARTHIK
#2026BCS008
#BATCH3
while true
do
  echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
    read -p "Enter your choice: " option
    case $option in
        1)
            read -p "Enter a number: " a 
            read -p "Enter a number: " b
            echo "Result = $((a + b))"
            ;;
        2)
             read -p "Enter a number: " a
            read -p "Enter a number: " b
            echo "Result = $((a - b))"
            ;;
        3)
             read -p "Enter a number: " a
            read -p "Enter a number: " b
            echo "Result = $((a * b))"
            ;;
        4)
            read -p "Enter a number: " a
            read -p "Enter a number: " b

            if [ $b -eq 0 ]; then
                echo "Division by zero is not possible."
            else
                echo "Result = $((a / b))"
            fi
            ;;
        5)
            echo "Exit"
            break
            ;;
        *)
            echo "Invalid choice! Try again."
            ;;
    esac
done

