#M.SAI KARTHIK
#2026BCS0082
#BATCH3
#!/bin/bash
pass=0
fail=0
for i in {1..5}
do
    read -p "Enter marks of student $i:" marks

    if [ $marks -ge 40 ]
    then
        echo "Student $i: Pass"
      (( pass ++ ))
    else
        echo "Student $i: Fail"
      ((fail ++ ))
    fi
done
echo "Total number of passes: $pass"
echo "Total number of failures: $fail" 
