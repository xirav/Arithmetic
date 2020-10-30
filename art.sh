#!/bin/bash -x

declare -a arr
declare -i dict

read -p "Enter the Digit a - " a
read -p "Enter the Digit b - " b
read -p "Enter the Digit c - " c


computation[0]=$(($a+$b*$c))

computation[1]=$(($a*$b+$c))

computation[2]=$(($c+(($a/$b))))

computation[3]=$((($a%$b)+$c))
##reading the values from the dict to the array and displaying
echo ${computation[@]}




