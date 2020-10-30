#!/bin/bash -x

declare -a arr
declare -i dict

read -p "Enter the Digit a - " a
read -p "Enter the Digit b - " b
read -p "Enter the Digit c - " c


##first computation
computation[0]=$(($a+$b*$c))
##echo $computation

computation[1]=$(($a*$b+$c))
##echo $computation

computation[2]=$(($c+(($a/$b))))
##echo $computation

computation[3]=$((($a%$b)+$c))

echo ${computation[@]}




