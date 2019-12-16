#!/usr/local/bin/bash -x

#Variables

d=0
m=0
y=0



#Take user input

read d
read m
read y		


#Print user input

echo $d / $m / $y

#Calculate day Of the week

y0=$(($y - $(( 14 - $m )) / 12))
echo $y0

x=$(($y0 + $y0 / 4 - $y0 / 100 + $y0 / 400))
echo $x

m0=$(($m + 12 * ((14 - $m) / 12) - 2))
echo $m0

d0=$(( $(($d + $x + 31 * $m0 / 12)) % 7 ))

echo $d0




