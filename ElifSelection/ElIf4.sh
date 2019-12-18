#!/usr/local/bin/bash -x

#Variables
read a
read b
read c

echo a + b \* c = $(($a + $b * $c))
echo a % b + c = $(($a % $b + $c))
echo c + a / b = $(($c + $a / $b))
echo a \* b + c = $(($a * $b + $c))

max=$a
if [ $b -gt $max ]
then
	max=$b
fi

if [ $c -gt $max ]
then
	max=$c
fi

echo Max Num is $max



min=$a
if [ $b -lt $min ]
then
   min=$b
fi

if [ $c -lt $min ]
then
   min=$c
fi

echo Min Num is $min
