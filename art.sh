#!/bin/bash -x



read -p "Enter the Digit a - " a
read -p "Enter the Digit b - " b
read -p "Enter the Digit c - " c


computation[0]=$(($a+$b*$c))

computation[1]=$(($a*$b+$c))

computation[2]=$(($c+(($a/$b))))

computation[3]=$((($a%$b)+$c))
##reading the values from the dict to the array and displaying
##echo ${computation[@]}


for ((i=0 ; i < 5 ; i++ ))
do
	for (( j=0 ; j < 5-i-1 ; j++ ))
	do
		if [ ${computation[j]} -lt ${computation[$((j+1))]} ]
		then
			temp=${computation[$j]}
			computation[$i]=${arr[$((j+1))]}
			computation[$((j+1))]=$temp
		fi
	done
done


echo ${computation[@]} 

