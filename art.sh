#!/bin/bash -x

read -p "Enter the Digit a - " a
read -p "Enter the Digit b - " b
read -p "Enter the Digit c - " c


##first computation
computation=$(($a+$b*$c))
echo $computation

computation2=$(($a*$b+$c))
echo $computation2

computation3=$(($c+(($a/$b))))
echo $computation3

computation4=$((($a%$b)+$c))
echo $computation4


