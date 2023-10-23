#!/bin/bash

echo "Please enter a: "
read -r a
echo "Please enter b: "
read -r b

if [ $a -gt $b ]; then 
    echo "a greater"
elif [ $a -lt $b ]
    then echo "b is greater"
else
    echo "equal"
fi