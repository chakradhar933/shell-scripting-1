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
for Package in $@ # git wget vim
do
  yum -q list installed $1
  if [ $? -ne 0 ]
  then
    echo "$1 ... not installed"
    yum install $Package -y &>>Log_file
    Validate $? "$Package Installation"
  else
     echo -e "$1 ... $yellow Installed already $Normal"
  fi     
done 