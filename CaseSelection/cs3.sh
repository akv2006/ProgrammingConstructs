#!/usr/local/bin/bash -x

## Take single digit number as input

read number

case $number in
	1)
		echo UNIT;;
	10)
		echo TEN;;
   100)	
		echo HUNDRED;;
	1000)   
		echo THOUSAND;;
   10000)
		echo TEN THOUSAND;;
   100000)
		echo LAKH;;
   1000000)
		echo TEN LAKH;;
	10000000)
		echo Crore;;
	100000000)
		echo Ten Crore;;
	*)	
		echo Wrong Input obtained;;
esac
