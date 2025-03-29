#!/bin/bash

<< disclaimer

This is infotaimnent purpose

disclaimer

read -p "Enter your gender: " gender
read -p "Enter your age: " age

if [[ $gender == "male" ]]; then
    echo "You are a boy"
elif [[ $age -ge 18 ]]; then
    echo "You are a Teenager"
else
    echo "You are not a Teenager"
fi




