#!/bin/bash

array=()

for i in `seq 0 100`
do
	if [ $((i%11)) -eq 0 ]
	then
		array+=($i)
	fi

done

echo "${array[@]}"
