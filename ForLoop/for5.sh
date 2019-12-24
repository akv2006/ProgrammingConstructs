#!/usr/local/bin/bash -x

##Variable
fact=1


#Take user input
read -p "Enter a number: " n


for (( i = 1; i <= $n ; i++))
do
	fact=$(($fact*$i))
done

echo The factorial of $n is : $fact


