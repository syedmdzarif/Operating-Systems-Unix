#!/bin/bash

time="morning"
case "$time" in  
    mor*) echo "it is morning";;        #quotation no need, mor* dile morning e hobe
    "night") echo "it is night";;
    *) echo "other";        #star is all, so age * dile oitai print, ncihe aar jabe na, hence star is always last 
esac