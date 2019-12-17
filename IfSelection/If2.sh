#!/usr/local/bin/bash -x

# Take date from user

read date

# Take month no from user

read month


if [ $month -eq 3 ] && [ $date -ge 20 ];
then
	echo true;
elif [ $month -eq 6 ] && [ $date -le 20 ];
then
	echo true;
elif [ $month -gt 3 ] && [ $month -lt 6 ];
then
	echo true;
else 
	echo false;	
fi
	



 
