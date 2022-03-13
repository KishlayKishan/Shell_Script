diceNo=0
while [[ result[$diceNo] -lt 10 ]]
do
  diceNo=$((RANDOM%6+1))
  result[$diceNo]=$((${result[$diceNo]}+1))
done
echo "Number times : " ${result[@]}
echo "Random number : " ${!result[@]}
echo "MaxRepeated No : " $diceNo


minNo=1
 for (( counter=1; counter<=6; counter++ ))
  do
    if [ ${result[$minNo]} -gt ${result[$counter]} ]
 then
     minNo=$counter
fi
done
echo "MinRepeated No: " $minNo
