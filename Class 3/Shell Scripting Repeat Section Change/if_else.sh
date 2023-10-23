#!/bin/bash 

var1=10
var2=5

if [ $var1 -gt $var2 ]; then 
    echo "var1 is greater"
elif [ $var1 -eq $var2 ]
then 
echo "they are equal"
else
echo "var2 is greater"
fi

#for string


var1=12
var2=8

if ! [ $var1 \> $var2 ]; then 
    echo "var1 is greater"
elif [ $var1 == $var2 ]
then 
echo "they are equal"
else
echo "var2 is greater"
fi

