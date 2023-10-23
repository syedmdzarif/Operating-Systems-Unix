#!/bin/bash

time="morning at 8 am"

case "$time" in
    "morning at 8 am" ) echo "it is morning";;
    night ) echo "it is night";;
    * ) echo "other";
esac