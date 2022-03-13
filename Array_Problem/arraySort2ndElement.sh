#!/bin/bash

array=()

for (( i=0; i<10; i++ ))
do
	a=$(( ( RANDOM % 899) + 100 ))
	array[((i))]+=$a
done

	echo "${array[@]} is array" 

arrays=(`echo ${array[@]} | tr " " "\n" | sort `)

	echo ${arrays[@]}

echo "${arrays[1]} is 2nd smallest and ${arrays[-2]} is 2nd largest "
