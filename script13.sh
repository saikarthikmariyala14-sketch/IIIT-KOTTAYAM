#!/bin/bash
#M.SAI KARTHIK
#2026BCS008
#BATCH3
signal=0
red=0
yellow=0
green=0
while true
do
read -p "Enter the color:" signal
if [[ $signal -eq 0 ]];then
break
fi
case $signal in
     1) echo "red"
        (( red++ ))
        ;;
     2) echo "yellow"
        (( yellow++ ))
         ;;
     3) echo "green"
        (( green++ ))
        ;;
     *) echo "invalid color code entered"
        ;;
esac
done
echo "no.of red" $red
echo "no.of yellow" $yellow
echo "no.of green" $green
