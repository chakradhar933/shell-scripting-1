#!/bash/bash
Userid=$(id -u)
if [ $Userid -ne 0 ]
then
  echo "Please run the script with root user"
  exit 1
fi  
# This is a generic function we need to pass the arguments
Validate(){
  if [ $1 -ne 0 ]
  then 
     echo "$2 ..... failed"
     exit 1
  else
     echo "$2 ...... success"
  fi   
}    
yum install git -y
Validate $? "Git installation"
yum install vim -y
Validate $? "vim installation"
yum install wget -y
Validate $? "wget installation"