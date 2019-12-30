##!/usr/local/bin/bash -x

##Variables
powerOfTwo=0;
power=0;

##Take user input
read -p "Enter a number: " n


while [ $powerOfTwo -lt 256 -a $power -lt $n ]
do
	((power++));
	powerOfTwo=$(echo 2 ^ $power | bc -l)
	echo $powerOfTwo
done
