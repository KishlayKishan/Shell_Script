#!/bin/bash

echo "Enter the Number: "

function prime_num() {
	f=0

	for (( i=2; i<=$(( number / 2 )); i++ ))
	do
		if [ $(( number % i )) -eq 0 ]
		then
			f=1
		fi
	done

	if [ $f -eq 1 ]
	then
		echo "$number is Not a Prime number."
	else
		result=$( palindrome $number )
		echo "$number is a Prime number $result"
	fi
}


function palindrome() {
	rev=0
	num=$number

	while [ $number -gt 0 ]
	do
		rem=$((number % 10))
		rev=$((rev * 10 + rem))
		number=$((number / 10))
	done

	if [ $rev -eq $num ]
	then
		echo "and also a palindrome"
	else
		echo "but not a palindrome"
	fi
}


read number
result=$( prime_num $number )
echo "$result"
