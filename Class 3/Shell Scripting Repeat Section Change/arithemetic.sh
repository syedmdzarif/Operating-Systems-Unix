#!/bin/bash 

expr 1 + 2

var1=5
var2=3
expr $var1 + $var2

var3=`expr $var1 + $var2`
echo "$var3"

var4=$(expr $var1 + $var2)      
echo "$var4"


var5=$((var1+var2))     #modern apprach
echo "$var5"


#multiply

expr 2 \* 5

var6=$((var1*var2))
echo "$var6"