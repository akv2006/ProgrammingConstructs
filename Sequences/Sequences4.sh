#!/usr/local/bin/bash -x

#Read 5 random 2 digit values

echo $((rand1=$((10 + $((RANDOM % 90))))))
echo $((rand2=$((10 + $((RANDOM % 90))))))
echo $((rand3=$((10 + $((RANDOM % 90))))))
echo $((rand4=$((10 + $((RANDOM % 90))))))
echo $((rand5=$((10 + $((RANDOM % 90))))))
echo sum $((sum=(($rand1 + $rand2 + $rand3 + $rand4 + $rand5))))
echo average $((average=(($sum / 5))))

