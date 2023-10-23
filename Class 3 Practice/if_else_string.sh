#!/bin/bash

str1="Hello"
str2="Helx"

# if [ $str1 \> $str2 ]
#     then echo "str1 greater" 
# elif [ $str1 \< $str2 ]
#     then echo "str2 greater"
if [ ! $str1 == $str2 ]
    then echo "not equal"
else
    echo "equal"
fi

