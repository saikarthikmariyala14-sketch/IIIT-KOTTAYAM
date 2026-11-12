#M.SAI KARTHIK
#2026BCS0082
#BATCH3
#!/bin/bash
for i in {1..5}
do
    read -p "Enter basic salary: " basic

    if [ $basic -le 0 ]; then
        echo "Invalid salary. Must be positive."
        continue
    fi
 HRA=$(( basic * 20 / 100 ))
    TravelAllowance=$(( basic * 10 / 100 ))

    if [ $basic -gt 50000 ]; then
        bonus=$(( basic * 5 / 100 ))
    else
        bonus=0
    fi

    gross=$(( basic + HRA + TravelAllowance + bonus ))

    echo "TOTAL GROSS = ₹$gross"
done

