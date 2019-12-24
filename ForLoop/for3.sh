#!/usr/local/bin/bash -x

#Take user input

read -p "Enter a number: " n

##Check if n is 1, 2 or 3

if [ $n -eq 1 ] 
then 
	echo $n is not a prime;
	exit; 
elif [ $n -eq 2 -o $n -eq 3 ] 
then 
	echo $n is prime;
	exit; 
fi

##Logic for rest of the numbers

flag=true;
for (( i = 2; i<=$(($n/2)) ; i++))
do
	if [ $(($n % $i)) -eq 0 ]
	then 
		echo $n is not a prime
		flag=false
		break;
	fi
done
	
if [ "$flag" = true ]
then 
	echo $n is prime;
fi

