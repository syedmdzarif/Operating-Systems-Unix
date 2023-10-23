#!/bin/bash 

set -x      #dile code plus output line by line print kore
echo "hello  world"
echo "i am zarif" 

echo "Please enter the number: "
read -r num     # -r dile backslash ke seperate charecter consider korbe na
echo -n "The number is $num"    # -n dile no off new line