#!/bin/bash
Userid=$(id -u)
Date=$(date +"%F:%H:%M:%S")
Log_file="$Date.log"
Red="\e[31m"
Green="\e[32m"
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
  yum install $Package -y
  Validate $? "$Package installation"
done  