#!/bin/bash
# You can pass the values to shell script from outside through arguments.
Name1=$1
Name2=$2
echo "hi,${Name1}"
echo "hello,${Name2}"
echo "Number of arguments passed are:$#"
echo "If you want to see all the arguments passed: $@"