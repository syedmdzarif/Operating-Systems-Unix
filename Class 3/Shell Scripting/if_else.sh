#!/bin/bash

a=30
b=5

if [ $a -gt $b ]        #then niche likhle no need ;
then echo "a is greater"        # -lt is less than
elif [ $a -eq $b ]; then
    echo "they are equal"
else
    echo "b is greater"
fi      #ending line is fi