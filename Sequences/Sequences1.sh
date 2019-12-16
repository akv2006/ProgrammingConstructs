#!/usr/local/bin/bash -x

#Get Random no between 1 to 6

echo $((1 + $((RANDOM%6))))
