#!/usr/local/bin/bash -x

head=0
tail=1

flipValue=$((RANDOM%2))

if [ $flipValue -eq $head ];
then
	echo "It's Head"
else
	echo "It's Tail"
fi
