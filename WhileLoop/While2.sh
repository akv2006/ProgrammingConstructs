#!/usr/local/bin/bash -x

##Variables
min=0;
max=100;
middleNum=0;
prevMiddleNum=0;
userAgreed=0;

##Logic for magic number
while [ $userAgreed -ne 1 ]
do

	prevMiddleNum=$middleNum;
	middleNum=$((($min + $max) / 2));
	
	##To handle, if thought number is 100
	if [ $prevMiddleNum -eq $middleNum ]
	then
		middleNum=$(($middleNum + 1));
	fi
 
	echo Is your number
	echo 1. equals $middleNum
   echo 2. greater than $middleNum
   echo 3. less than  $middleNum
	
	read userAgreed

	if [ $userAgreed -eq 2 ]
	then 
		min=$middleNum
	elif [ $userAgreed -eq 3 ]
	then
		max=$middleNum
	else
		echo Bingo!! Your number is $middleNum
	fi
done
