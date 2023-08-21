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
IS_INSTALLED=no #global variable
CHECK_INSTALLED(){
    yum -q list installed $! &>/dev/null
    if [ $? -eq 0 ]
    then
       IS_INSTALLED=yes
    fi   
}
for Package in $@ # sample inputs: git, maven etc
do
    CHECK_INSTALLED $Package
    if [ IS_INSTALLED == "no" ]
    then
       echo "$Package..... Not installed"
       yum install $Package -y &>>$Log_file
       Validate $? "$Package installation"
    else
       echo -e $Package .. $yellow installed already $Normal
       fi
    done




