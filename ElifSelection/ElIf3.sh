#!/usr/local/bin/bash -x

## Take single digit number as input

read number

if [ ${#number} -eq 1 ];
then 
	echo UNIT
elif [ $number -eq 10 ]; 
then 
	echo TEN
elif [ $number -eq 100 ];
then 
   echo HUNDRED
elif [ $number -eq 1000 ];
then 
   echo THOUSAND
elif [ $number -eq 10000 ];
then 
   echo TEN THOUSAND
elif [ $number -eq 100000 ];
then 
   echo LAKH
elif [ $number -eq 1000000 ];
then 
   echo TEN LAKH
elif [ $number -eq 10000000 ];
then 
   echo CARORE
elif [ $number -eq 100000000 ];
then 
	echo TEN CARORE
else
	echo Entered wrong input
fi
