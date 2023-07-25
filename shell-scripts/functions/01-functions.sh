#!/bin/bash
Userid=$(id -u)
# check user is root are not
if [ $Userid -ne 0 ]
then
   echo "Please run this script with root user access"
   exit 1
fi
echo "installing git"
yum install git -y 
if [ $? -ne 0 ]
then 
   echo "git installation is failed"
   exit 1
else
   echo "git installation is success"
fi
echo "installing vim"
yum install vim -y
if [ $? -ne 0 ]
then
   echo "Vim installation is failed"
   exit 1
else
   echo " vim installation is success"
fi  
echo "Installing wget"
yum install wget -y
if [ $? -ne 0 ]
then 
   echo "wget installation is failed"
   exit 1
else
   echo "wget installation is success"
fi      