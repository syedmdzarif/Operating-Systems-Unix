#!/bin/bash 

time=morning

case $time in 
    morning) echo "morning";;
    night) echo "night";;
    *) echo "others";;
esac