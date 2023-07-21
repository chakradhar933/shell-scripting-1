#!/bin/bash
# creating a variable and assign to value directly to here.

Name=Mahesh
# $Name or ${Name}
echo "Hi,$Name"
## Run a command inside shell script and get the value inside variables.
Date=$(date +%F)
echo "Hello,Todays date is:${Date}"