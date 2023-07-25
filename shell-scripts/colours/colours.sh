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
      exit
    else
      echo " $2 .....$Green Success $Normal"
    fi    
}  
yum install git -y &>>$Log_file
Validate $? "Git installation"
yum install wget -y &>>$Log_file
Validate $? "Wget Installation"
yum install vim -y &>>$Log_file
Validate $? "vim installation"