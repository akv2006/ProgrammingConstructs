#!/usr/local/bin/bash -x

#Read 5 random 3 digit values

echo $((rand1=$((100 + $((RANDOM % 900))))))
echo $((rand2=$((100 + $((RANDOM % 900))))))
echo $((rand3=$((100 + $((RANDOM % 900))))))
echo $((rand4=$((100 + $((RANDOM % 900))))))
echo $((rand5=$((100 + $((RANDOM % 900))))))



## Calculate max value



max=$rand1

if [ $rand2 -gt $max ]
then
	max=$rand2
fi

if [ $rand3 -gt $max ]
then
	max=$rand3
fi

if [ $rand4 -gt $max ]
then
	max=$rand4
fi

if [ $rand5 -gt $max ]
then
	max=$rand5	
fi

echo $max



## Calculate min value



min=$rand1

if [ $rand2 -lt $min ]
then
	min=$rand2
fi

if [ $rand3 -lt $min ]
then
	min=$rand3
fi

if [ $rand4 -lt $min ]
then    
	min=$rand4
fi

if [ $rand5 -lt $min ]
then
	min=$rand5
fi

echo $min
