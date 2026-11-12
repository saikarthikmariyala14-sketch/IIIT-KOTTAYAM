  GNU nano 8.7.1                                                            script22.sh
#!/bin/bash
#M.SAI KARTHIK
#2026BCS0082
#BATCH3
secret=45
attempt=0
while [ $attempt -lt 10 ]
do
  read -p "Guess a number between 1 and 100:" guess

if [ $guess -lt 1 ] || [ $guess -gt 100 ]
then
   echo "Invalid guess! Enter between 1 and 100."
   continue
fi
attempt=$((attempt+1))
if [ $guess -eq $secret ]
then
   echo "Correct! You guessed the number."
   break
elif [ $guess -gt $secret ]
then
   echo "Too High!"
else
   echo "Too Low!"
fi
done
if [ $guess -ne $secret ] && [ $attempt -eq 10 ]
then
    echo "Game Over! Maximum attempts reached."
    echo "Secret number was $secret"
fi
done
