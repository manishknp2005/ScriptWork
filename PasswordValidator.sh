#!/bin/bash

echo "Please enter a valid passowrd"
read pass

regex="/^[A-Za-z0-9#$+*]{8,}$/"    //This creates a character class consisting of the legal characters, 
                                   //and quantifies how many such characters are needed; a minimum of eight. 
                                   //It anchors to the start and the end of the string, so that the string must 
                                   //contain only those characters, from start to finish.

if [ $pass =~ $regex ]
then
echo "Password is valid"
else
echo "Password didn't match the password rules"
fi
