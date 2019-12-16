#!/usr/local/bin/bash -x

#Get Random no between 1 to 6

random1=$((1 + $((RANDOM%6))))
random2=$((1 + $((RANDOM%6))))

addition=$(($random1 + $random2))

echo $addition
