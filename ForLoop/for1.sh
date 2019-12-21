#!/usr/local/bin/bash -x

#Take user input

read n

for (( i = 1; i <= $n ; i++))
do
	echo 2 ^ $i| bc -l
done


