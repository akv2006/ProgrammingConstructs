#!/usr/local/bin/bash -x

## Take single digit number as input

read number

if [ $number -eq 0 ];
then 
	echo SUNDAY
elif [ $number -eq 1 ]; 
then 
	echo MONDAY
elif [ $number -eq 2 ];
then 
   echo TUESDAY
elif [ $number -eq 3 ];
then 
   echo WEDNESDAY
elif [ $number -eq 4 ];
then 
   echo THURSDAY
elif [ $number -eq 5 ];
then 
   echo FRIDAY
elif [ $number -eq 6 ];
then 
   echo SATURDAY
else
	echo Input not proper
fi
