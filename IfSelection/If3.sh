#!/usr/local/bin/bash -x

##Take 4 digit year as input

read year;

if [ ${#year} -ne 4 ];
then 
	exit;
fi

if [ $(($year % 4)) -eq 0 ]; 
then
	if [ $(($year % 100)) -eq 0 ];
	then
		if [ $(($year % 400)) -eq 0 ];
		then
			echo Leap Year;
		else
			echo Not Leap Year;
		fi
	else
		echo Leap Year;
	fi
else
	echo Not Leap Year;
fi	
