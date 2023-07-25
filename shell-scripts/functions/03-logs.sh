#!/bin/bash
Userid=$(id -u)
Date=$(date +"%F:%H:%M:%S")
Log_file="$Date.log"
if [ $Userid -ne 0 ]
then
  echo " Please login with root"
  exit 1
fi 
Validate(){
    if [ $1 -ne 0 ]
    then
       echo " $2 ... failed"
       exit 1
    else
       echo " $2 .... success"
    fi      
}  
yum install git -y &>>$Log_file
Validate $? "Git installation"
yum install wget -y &>>$Log_file
Validate $? " Wget installation"
yum install wget -y &>>$Log_file
Validate $? "Wget Installation"
