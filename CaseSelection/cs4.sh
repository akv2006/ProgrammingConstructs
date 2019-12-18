#!/usr/local/bin/bash -x

## Choose options
echo 1 Feet to Inch
echo 2 Feet to Meter
echo 3 Inch to Feet
echo 4 Meter to Feet

read option

case $option in
	1)
		echo Enter Feet Value.
		read -p "Enter feet: " feet
		echo $feet feet = $(echo $feet \* 12 | bc -l) inch;;
	2)
      echo Enter Feet Value.
      read -p "Enter feet: " feet
      echo $feet feet = $(echo $feet \* 3048 / 10000 | bc -l) meter;;
   3)
      echo Enter Inch Value.
      read -p "Enter inch: " inch
      echo $inch inch = $(echo $inch / 12 | bc -l) feet;;
	
	4)   
      echo Enter Meter Value.
      read -p "Enter meter: " meter
      echo $meter meter = $(echo $meter \* 10000 / 3048 | bc -l) feet;;
	*)	
		echo Wrong Option Selected
esac
