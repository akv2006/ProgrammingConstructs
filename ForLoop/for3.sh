#!/usr/local/bin/bash -x

#Take user input

read n

# Check if entered number is prime
if [ $n -eq 1 ] 
then 
	echo Not a Prime; 
elif [ $n -eq 2 -o $n -eq 3 ] 
then 
	echo Is Prime; 
fi


for (( i = 2; i<=$(($n/2)) ; i++))
do
	if [ $(($n % $i)) -eq 0 ]
	then 
		echo Not a Prime
		exit
	fi
	echo Is Prime
done


