#!/usr/local/bin/bash -x

##Variables
factors=""


#Take user input
read -p "Enter a number: " input
n=$input;

#for (( i = 2; $i <= $(($n/$i)) ; i++ ))
for (( i = 2; $(($i*$i)) <= $n ; i++ ))
do

	for(( ;$n % $i == 0; ))
	do
		factors+=$i;
		factors+=" "
		n=$(($n/$i));
	done
	
done

if [ $n -gt 1 ]
then
	factors+=$n;
fi

echo The prime factors of $input are $factors


