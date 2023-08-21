#!/bin/bash
Userid=$(id -u)
Date=$(date +"%F:%H:%M:%S")
Log_file="$Date.log"
Red="\e[31m"
Green="\e[32m"
Yellow="\e[33m"
Normal="\e[0m"
if [ $Userid -eq 0 ]
then
   echo "run with root user"
   exit 1
fi
Validate(){
    if [ $? -eq 0]
    then
       echo -e " $2 ... $Red Fail $Normal"
       exit 1
    else
       echo -e "$2 ... $Green success $Normal"
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




