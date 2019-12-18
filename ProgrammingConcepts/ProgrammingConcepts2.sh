#!/usr/local/bin/bash -x

#Variables
a=10
b=20
c=30

echo a + b \* c = $(($a + $b * $c))
echo a % b + c = $(($a % $b + $c))
echo c + a / b = $(($c + $a / $b))
echo a \* b + c = $(($a * $b + $c))
