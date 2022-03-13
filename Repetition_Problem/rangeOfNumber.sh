#!/bin/bash

echo  "Enter a first number:"
read number1
echo  "Enter a second number:"
read number2

for (( counter1=number1;  counter1<number2; counter1++ ))
do
    result=1
   for (( counter2=2; counter2<counter1; counter2++ ))
   do
     if [ $(($counter1%$counter2))  -eq 0 ]
     then
         result=$(($result+1))

     fi

   done

     if [ $result -eq 1 ]
        then
        echo "Prime numbers between range is :$counter1"

     fi
done
