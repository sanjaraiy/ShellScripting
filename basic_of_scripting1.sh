#!/bin/bash

read  -p "Enter your username:" username

echo "Username is: $username"

sudo useradd -m $username

echo "New user added"
