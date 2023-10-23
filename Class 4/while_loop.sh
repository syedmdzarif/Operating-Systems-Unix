#!/bin/bash

# x=0

# while [ $x -ne 5 ]
# do
#     echo "$x"
#     x=$((x+1))        #increment inside the while loop
# done






# #3 na deya porjonto read kortei thakbe
# read -r input

# while [ "$input" -ne 3 ]
# do 
#     echo "Enter again: "
#     read -r input
# done






# file theke read line by line 

while read -r line 
do
    echo "here now"
    echo "$line"
done < random.txt



