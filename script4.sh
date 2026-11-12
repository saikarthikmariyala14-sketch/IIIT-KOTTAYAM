#M.SAI KARTHIK
#2026BCS0082
#BATCH3
#!/bin/bash
hotCount=0
moderateCount=0
coldCount=-1
p=0
while [ "$p" -ne "-999" ]
do
read -p "enter the temperature(in celsius): " p
if [ "$p" -gt 35 ];then
(( hotCount++ ))
elif [ "$p" -lt 20 ];then
(( coldCount++ ))
elif [[ "$p" -ge 20 && "$p" -le 35 ]];then
(( moderateCount++ ))
elif [ "$p" -lt -273.15 ];then
echo "INVALID TEMP ENTERED"
fi
done
echo "HOT=" $hotCount
echo "MODERATE=" $moderateCount
echo "COLD=" $coldCount

