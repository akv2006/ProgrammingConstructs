#!/usr/local/bin/bash -x

#Take range from user

read -p "Enter min" min
read -p "Enter max" max

for (( n = min; n <= max; n++ ))
do
	##Check if n is 1, 2 or 3
	if [ $n -eq 1 ] 
	then 
		#Not a prime;
		continue; 
	elif [ $n -eq 2 -o $n -eq 3 ] 
	then 
		echo $n is prime;
		continue; 
	fi

	##Logic for rest of the numbers
	flag=true;
	for (( i = 2; i<=$(($n/2)) ; i++))
	do
		if [ $(($n % $i)) -eq 0 ]
		then 
			#Not a prime
			flag=false
			break;
		fi
	done
	
	if [ "$flag" = true ]
	then 
		echo $n is prime;
	fi
done


