#!/bin/bash

# for i in {1..5..2}
# do
#     echo "$i"
# done


# decrement 
# for i in {5..1..-2}
# do
#     echo "$i"
# done


# c er moto for loop -> with condition checking majher ta
# for (( i=0; i<5; i++ ))
# do 
#     echo "$i"
# done




# command line arg
# for i in "$@"
# do 
# echo "$i"
# done
# same but modern approach
# for i in $*
# do 
# echo "$i"
# done


for file in $(ls)
do
    echo "$file"
done