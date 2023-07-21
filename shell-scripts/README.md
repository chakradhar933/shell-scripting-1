# Shell-scripting.

1. In general any programming or scripting concepts we have
   1. variables
   2. datatypes
   3. conditions
   4. loops
   5. functions
Shell-scripting is nothing but a list of commands and some scripting concepts. All commands in one file is called as shell-sceipting. With the commands you are giving in shell scripting you will add scripting concepts like variables,datatypes,conditions,functions etc to take some decesions.
Variables:
 1. They are multiples ways to create the variables . Onething is you can directly create varaible and assign value inside shell-scripting.
 2. How can you run a command inside shell script and get the value inside variables?
 ans: how we will do this we write a command ex: Date=$(any command) . Run the command store the value inside the Date varaible.
 3. You can pass the values to shell script from outside through arguments.
 you cna pass the values trhrough command line ex: 03-variables.sh mahesh suresh 
 Shell script store the values like $1= mahesh , $2= suresh
 Numeber of arguments are passed using the command $#
 If you want to see all the arguments passed $@
 4. You ask the user to enter the values dynamically that is through read command.

 Data types:
 Int, float, double boolean string
 int ---> 33000 to 33333
 float ---> 1.22
 string ---> hai
 bool ---> true/false.
 In shell data types are not much used becuse mostly it is string here. But if you pass number shell script can understand its a number
Array : Array is a list of all elements.


 



