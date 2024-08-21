myString <- "Hello World!!"
print(myString)

#DATATYPES 

#logical
l <- TRUE
print(class(l))

#numeric
n <- 23.5
print(class(n))

#integer
i <- 2L 
print(class(i))

#complex
c <- 2+5i 
print(class(c))

#character
z <- 'good'
print(class(z))

#VARIABLE NAMES
var_name2. = 1

#invalid
#var_name% = 1

#2var_name=1

.var_name= 1
var.name = 1


#.2var_name= 1

#_var_name = 1

#VARIABLE ASSIGNMENT 
x<-3
2->y
#arrow should point to variable
10->x1
x1<-10
x1=10

#variable assignment program
#program 1
a<-4
b=5
a+b->c
print(c)
print("sum is",c) #this does not integrates c with message 
cat("sum is", c)

#program 2
#For Printing multiple values cat function is used
var1=10
print(var1)
cat(var1)
var2<-20
var3<-30
cat(var1,var2)
cat (var1, "", var2)
cat (var1, "", var2, "\n", var3)



#To know all the variables currently available in the work space
print(ls())

#remove any variable from workspace
rm(l)
print(ls())


#role of semi colon 
m<-5;n<-10


# Use of paste and paste0
paste (var1, var2, var3) # all in one line 
paste0 (var1,var2,var3 ) #no space 

#input data from user 
readline('Enter your name')

# storing input from user to variable
v = readline('Enter your name')
print(v)

# readline stores the information in string so converting it to number 
z= as.numeric(readline('Enter any number')) 
print (z)
  
#AsSIGNMENT
  #1.  program to find sum of three numbers of your choice
  #2. Input three numbers from user 
  #3. Input three numbers and find the product of the numbers
  #4. List all the variables used in the work space
  #5. Input two numbers from user and swap them
  #6. Input 5 numbers from user and print them in single row
  #6.2 Print them in 5 different lines 
