#!/bin/bash

str1=hello
str2=help

if [ $str1 \> $str2 ]; then      # only > dile bhul ashbe, will show str1 greater, need to put \>
    echo "string 1 is lexicographically greater"
else   
    echo "something else"
fi

