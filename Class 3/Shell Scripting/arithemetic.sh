#!/bin/bash

# expr 1 + 1

# var= `expr 1 + 1`
# echo $var



# x=2
# y=3
# var2=`expr $x \* $y`
# echo "$var2"




# # modern format 


# var=$((1+1))
# echo "$var"

x=2
y=3
add=$((x+y))
echo "$add"

sub=$((x-y))
echo "$sub"

mul=$((x*y))        #modern format e likhle no need \*, only *
echo "$mul"

div=$((x/y))
echo "$div"