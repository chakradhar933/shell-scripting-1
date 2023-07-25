# Shell-scripting.

1. In general any programming or scripting concepts we have
   1. variables
   2. datatypes
   3. conditions
   4. loops
   5. functions

- Shell-scripting is nothing but a list of commands and some scripting concepts. All commands in one file is called as shell-scripting. With the commands you are giving in shell scripting you will add scripting concepts like variables,datatypes,conditions,functions etc to take some decesions.
- Variables:
  1. They are multiples ways to create the variables . Onething is you can directly create varaible and assign value inside shell-scripting.
  2. How can you run a command inside shell script and get the value inside variables?
 ans: We will do this we write a command ex: Date=$(any command) . Run the command store the value inside the Date varaible.
  3. You can pass the values to shell script from outside through arguments.
 you cna pass the values trhrough command line ex: 03-variables.sh mahesh suresh 
  - Shell script store the values like $1= mahesh , $2= suresh
  - Number of arguments are passed using the command $#
  - If you want to see all the arguments passed $@
 4. You ask the user to enter the values dynamically that is through read command.

-  Data types:
 Int, float, double boolean string
 int ---> 33000 to 33333
 float ---> 1.22
 string ---> hai
 bool ---> true/false.
 In shell data types are not much used becuse mostly it is string here. But if you pass number shell script can understand its a number
Array : Array is a list of all elements.
Boolean: 0 means failure
         1 means success
Exit Codes:
---------------------
To write a shell script install git.
Unfortunally shell dont care error . it will move forward.
It is our responsibility to check sucess or not
How programs are understand that is error or not by using exit codes .
shell will store the value inside the special variable called as $? -----> 0 means success and other than zero failure
for example you type any command ls or file you can check echo $? 
Check the exit codes for every line.
Conditions:
----------------------
Examples:
If (expression) {
   these commands are run when expression is true
}
else {
   these commands are run when expression is false
}
We need to check
if(exit code is 0) {
then print sucess
}
else{
then print failure   
}   

If condition synatx
if [ expression ]
then
    statements can be excuted if expression is true
else
    statement can be excuted if expression is false
fi        

First findout user has root access are not.
If he has root access forward otherwise inform him you are not root user.

- Task:
- Install any package
   1. we need root access
   2. check user has root access or not
   3. if yes proced
   4. if no tell me your are not root user tell me exit
- To check the root user by using the command Id -u  
- root user number is 0
- if id -u is 0 ---> then root
--------------------------------------------
* Requriments:
- To install multiple packages.
- git 
- vim
- wget
- in 01-functions.sh script  was very lengthy and some reptitative tasks are their.
- To keep code should be in dry.
- Dry: Dont repeat yourself. In this we can use variables.
* Functions:
- Functions does a unit of work, you can create functions and use it whereever required . A change in one place reflects everywhere where ever it required, like variables.

function syntax:
Function_name () {

}
- Function_name : This is how you call the function.

- 02-function.sh
# In this whatever will be printed on the terminal only.
- For example to shedule a script daily at 6 am . Tommarow you can check whether it is running or not . How can you get it. 
- In this purpose logs are the best practice to check the status of previous excutions.
* Output redirections.
- 1 - means success.
- 2 - means failed
- & - means both
- > - redirections.
- >> - appending
- ls -ltr > sample.log When are redirect by default give sucess output. If you give error it cannot redirect. Ex: lsg -ss > sample.log . To store the error output using 2 ex: lss-s 2> sample.log . it only redirect to only one output .
- To store both outputs success and failure use &> ex: lsss -l &> sample.log . It will deleting the old content and adding new content only.
- We want both data appending ex : lss -l &>> sample.log
- Create a log file to store the output
- date +"%F:%H:%M"
- Task:
- Everytime i want to excute  a shell-script i want to create a log file with time stamp. 
* Colours
- We can improve user experince with colours
- Task-2:
1. Fail should be red colour
2. Success should be green
- Linux colours
- Ex: echo -e "\e[31m Hello world/e[0m"
Functions are some lengthy to reduce some steps
- Task-3: Now you got 3 packeges tommarow manager asks to install 100 pacakges its a headak to reduce this using loops.
------
- loops
- Loops-- > keeps always dry.
- For loop
- Ex: for (int i=0; i<20; i++>){
            echo $i
}
- script.sh has git vim wget 
How can you see the arguments $@
- Ex:
for Variable in 1 2 3 4 .. N
do
  <commands>
done  
- Task:2 
- i dont want to install already run  packages
- first check already installed or not
- if install skip it
- if not install install it.



