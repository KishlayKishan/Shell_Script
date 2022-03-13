#!/bin/bash

echo "Enter a number"
read number
result=1

for ((  counter=2; counter<$number; counter++ ))
do
    if  [  $(($number%$counter))  -eq 0 ]
    then
        result=$(($result+1))

    fi

done

if [  $result -eq 1 ]
then
  echo "its a prime number"

else
  echo "its not a prime number"

fi
