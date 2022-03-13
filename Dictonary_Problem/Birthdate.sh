monthKey=0
for (( counter=0; counter<=50; counter++ ))
do
 monthKey=$((RANDOM%12+1))
  result[$monthKey]=$((${result[monthKey]}))
done
echo "Month of persons bith : " ${!result[@]}
echo "BirthDate in that month : " ${result[@]}
