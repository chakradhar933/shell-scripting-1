#!/bin/bash
Userid=$(id -u)
Date=$(date +"%F:%H:%M:%S")
Log_file="$Date.log"
Red="\e[31m"
Green="\e[32m"
yellow="\e[33m"
Normal="\e[0m"
if [ $Userid -ne 0 ]
then
  echo " Please run with root user"
  exit 1
fi
Validate(){
    if [ $1 -ne 0 ]
    then
      echo -e " $2 .....$Red Fail $Normal"
      exit 1
    else
      echo -e "$2 .....$Green Success $Normal"
    fi    
}
# 10-not installed 20-installed.
CHECK_INSTALLED(){
    IS_INSTALLED=10
    yum -q list installed $1 &>/dev/null
    if [ $? -eq 0 ]
    then
      IS_INSTALLED=20
    fi
    return $IS_INSTALLED  
}
for Package in $@ #sample input: git,vim
do
    CHECK_INSTALLED $Package
    return_value=$?
    echo "return value from function: $return_value"
    if [ $return_value -ne 20 ]
    then
       echo "$Package..... Not installed"
       yum install $Package -y &>>$Log_file
       Validate $? "$Package installation"
    else
       echo -e $Package .. $yellow installed already $Normal
       fi
    done