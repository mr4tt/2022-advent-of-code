#!/bin/bash

# input=input.txt
input=test.txt

declare {elf,firstElf,secondElf,thirdElf}=1
declare {sum,firstSum,secondSum,thirdSum}=0


while IFS= read -r line; do	
# 	echo $line
	if [ -n "$line" ]; then
		sum=$((sum+line))
	else
		if [ $sum -gt $firstSum ]; then
			firstSum=$sum
			firstElf=$elf
		elif [ $sum -gt $secondSum ]; then
			secondSum=$sum
			secondElf=$elf
		elif [ $sum -gt $thirdSum ]; then
			thirdSum=$sum
			thirdElf=$elf
		fi
		((elf++))
# 		echo $elf
		sum=0
	fi
 
done < "$input" && echo $firstSum + $secondSum + $thirdSum, $firstElf, $secondElf, $thirdElf



