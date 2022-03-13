echo "Welcome to Arithmetic Computation and Sorting"
read -p "Enter three Values : " a b c
echo "$a $b $c"

declare -A DictResult
DictResult[Exp1]=$((a+b*c))
DictResult[Exp2]=$((a*b+c))
DictResult[Exp3]=$((c+a/b))
DictResult[Exp4]=$((a%b+c))
echo "${DictResult[@]}"

for (( counter=1; counter<=4; counter++ ))
do
  arrayResult[$counter]=${DictResult[Exp$counter]}
 done
echo "${arrayResult[@]}"
 for (( counter2=1; counter2<4; counter2++ ))
 do

   for (( counter2=1; counter2<4; counter1++ ))
    do

   if [[ ${arrayResult[$counter2]} -lt ${arrayResult[$(($counter2+1))]} ]]
   then
       temp=${arrayResult[$counter2]}
      arrayResult[$counter2]=${arrayResult[$((counter2+1))]}
       arrayResult[$((counter2+1))]=$temp
    fi
  done
done

echo " ${!arrayResult[@]} : ${arrayResult[@]}" 

#Ascending order
for (( counter=1; counter1<=4; counter1++ ))
do
  
for (( counter2=1; counter2<4; counter2++ ))
do
   if [[ ${arrayResult[$counter2] -lt ${arrayResult}[$(($counter2+1))]} ]]
   then
       temp=${arrayResult[$counter2]}
      arrayResult[$counter2]=${arrayResult[$((counter2+1))]}
       arrayResult[$((counter2+1))]=$temp
    fi
  done
done

echo " ${!arrayResult[@]} : ${arrayResult[@]} "
