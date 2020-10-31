#!/bin/bash 

n=4

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
		if [[ ${computation[j]} -gt ${computation[$((j+1))]} ]]
		then
			temp=${computation[$j]}
			computation[$i]=${arr[$((j+1))]}
			computation[$((j+1))]=$temp
		fi
	done
done


echo ${computation[@]} 

for (( i=0 ; i<$n ; i++ ))
do
	for (( j=$i ; j < $n ; j++ ))
	do
		if [ ${computation[i]} -lt ${computation[j]} ]
		then
			t=${computation[$i]}
			computation[$i]=$computation{$j}
			computation[$j]=$t
		fi
	done
done
for (( i=0 ;i < $n ;i++ ))
do
	echo ${computation[$i]}
done
