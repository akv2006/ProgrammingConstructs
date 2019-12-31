#!/usr/local/bin/bash -x

##Variables
totalAmount=100;
betAmount=1;
goalAmount=200;
timesWon=0;
totalBets=0;
betResult=0;

loss=0;
win=1;

while [ $totalAmount -ne $goalAmount -a $totalAmount -ne 0 ]
do
	betResult=$((RANDOM%2))
	((totalBets++))

	if [ $betResult -eq $loss ];
	then
		echo "You Lost!"
		totalAmount=$(($totalAmount - $betAmount)); 
	else
		echo "You Won!"
		totalAmount=$(($totalAmount + $betAmount));
		((timesWon++))

	fi
done

echo Total Bets : $totalBets
echo TotalWins : $timesWon
echo TotalAmount : $totalAmount
