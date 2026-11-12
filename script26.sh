                                                            script25.sh
#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
eligible=0
not_eligible=0
while true
do
  read -p "Enter attendance percentage (-1 to stop):" attendance

if [ $attendance -eq -1 ]
then
   break
fi
if [ $attendance -lt 0 ] || [ $attendance -gt 100 ]
then
   echo "Invalid percentage!"
elif [ $attendance -ge 75 ]
then
   echo "Eligible"
   eligible=$((eligible+1))
else
   echo "Not Eligible"
   not_eligible=$((not_eligible+1))
fi
done
echo "Eligible students: $eligible"
echo "Not eligible students: $not_eligible"
