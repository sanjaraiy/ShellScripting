#!/bin/bash

<< disclaimer

This is infotaimnent purpose

disclaimer

read -p "Enter the age: " age

if [[ $age -eq 18 ]]; then
    echo "You are a Teenager"
else
    echo "You are not a Teenager"
fi


