#M.SAI KARTHIK
#2026BCS0082
#BATCH3
#!/bin/bash
a=0
b=0
c=0
d=0
fail=0
while true
do
   read -p "Enter marks:" marks
    if [ $marks -eq -1 ]
    then
        break
    fi
    if [ $marks -lt 0 ] || [ $marks -gt 100 ]
    then
        echo "Invalid marks entered"
        continue
    fi
    if [ $marks -ge 90 ]
    then
        a=$((a+1))
    elif [ $marks -ge 80 ]
    then
        b=$((b+1))
    elif [ $marks -ge 70 ]
    then
        c=$((c+1))
    elif [ $marks -ge 40 ]
    then
        d=$((d+1))
    else
        fail=$((fail+1))
    fi
done

echo "Grade A: $a"
echo "Grade B: $b"
echo "Grade C: $c"
echo "Grade D: $d"
echo "Fail: $fail"

