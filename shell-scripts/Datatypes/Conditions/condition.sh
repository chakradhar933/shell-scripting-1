#!/bin/bash
Userid=$(id -u)
if [ $Userid -eq 0 ]
then
  echo "user has root access"
else
  echo "u are not root user. please run with root "
  exit 1
fi    
echo "install the git"
yum install git -y