#!/bin/bash

# This is for loop and while loop

<< task
  1 is argument 1 which is folder name
  2 is start range
  3 is end range
task

#for ((num=$2; num<=$3 ; num++))
#do 
#	mkdir "$1$num"
# done


for ((num=$2; num<=$3; num++))
do 
	rmdir "$1$num"
done


