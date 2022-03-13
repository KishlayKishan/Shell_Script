#!/bin/bash 

echo "Enter a number:"
read number1
result=1

for (( number=1; number<=$number1; number++ ))
do

    result=$(( $result*$number ))

done

echo " factorial of a number is:$result"
