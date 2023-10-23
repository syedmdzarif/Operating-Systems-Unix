#!/bin/bash

str1=hello
str2=hell

if [ ! $str1 == $str2 ]; then      # only > dile bhul ashbe, will show str1 greater, need to put \>
    echo "not equal"
else   
    echo "equal"
fi

# x=1
# y=2

# if [ ! $x -eq $y ];then
#     echo "not equal"
# else    
#     echo "equal"
# fi

