#!/bin/bash

echo "Please enter a valid passowrd"
read pass

regex="/^[A-Za-z0-9#$+*]{8,}$/"

if [ $pass =~ $regex ]
then
echo "Password is valid"
else
echo "Password didn't match the password rules"
fi
