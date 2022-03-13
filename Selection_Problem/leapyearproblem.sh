#!/bin/bash

echo "enter the year :"
read y

a=`expr $y % 4`
b=`expr $y % 100`
c=`expr $y % 400`

if [ $a -eq 0 -a $b -ne 0 -o $c -eq 0 ]
then

echo "$y is leap year"

else

echo "$y is not leap year"

fi
