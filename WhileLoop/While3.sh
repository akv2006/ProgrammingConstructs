# #!/usr/local/bin/bash -x

head=0;
tail=1;
headCount=0;
tailCount=0;

while [ $headCount -ne 11 -a $tailCount -ne 11 ]
do
	flipValue=$((RANDOM%2))

	if [ $flipValue -eq $head ];
	then
		((headCount++))
		echo "It's Head" $headCount
	else
		((tailCount++))
		echo "It's Tail" $tailCount
	fi
done
