#!/bin/bash 

	dice1=$(((RANDOM%6)+1))
	dice2=$(((RANDOM%6)+1))
	sum=$((dice1 + dice2))
		echo "Sum of two Random Dice Numbers Are: $dice1+$dice2="$sum

