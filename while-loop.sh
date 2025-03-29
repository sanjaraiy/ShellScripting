#!/bin/bash

# This is a while loop

#num=0

#while [[ $num -le 5 ]]
#do
#	echo "lol"
#	num=$((num + 1))

#done

num=0

while [[ $num -le 10 ]]; do  
    echo "$num"
    num=$((num + 2))  # Correct increment syntax
done

