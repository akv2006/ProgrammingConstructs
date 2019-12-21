#!/usr/local/bin/bash -x

#Take user input

harmonic=0

read n

for (( i = 1; i <= $n ; i++))
do
	num=$( echo 1 / $i | bc -l )
	harmonic=$( echo $harmonic + $num  | bc -l ) 
done

echo harmonic number\($n\) is: $harmonic


