#!/bin/bash

str="yES"

case "$str" in
    [a-zA-Z]yES ) echo "match";;        #case does not do regexp, only does pattern matching o, so output ashbe na
    * ) echo "no match";;
esac