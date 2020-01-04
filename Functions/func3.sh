##!/usr/local/bin/bash -x

function isPrime() {
	n=$1;
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
	for (( i = 2; i <= $(($n/2)) ; i++))
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
}

function getReverse() {
	local num=$1
	local reversed=0
	
	while [ $num -ne 0 ]
	do
		lastDigit=$(($num % 10))
		reversed=$(( $reversed * 10 + $lastDigit ))
		num=$(($num / 10));		
	done
	
	#return the value
	echo $reversed
}

function isNumberPalindrome() {
	num1=$1
	num2=$2
	
	local reversed=$(getReverse $num1)
	#echo Reverse of $num1 is $reversed
	
	if [ $(getReverse $num1) -eq $num2 ]
	then
		echo true
	else
		echo false
	fi
}

read -p "Enter a number: " n
isPrime $n
echo and it\'s reverse $(isPrime $(getReverse $n)) 

#retVal=$(isNumberPalindrome 123 322)
#echo $retVal

