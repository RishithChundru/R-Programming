#1
a<-10
if(a > 8){
  paste(a, "is greater than 8")
}

#2
b<-as.numeric(readline("enter a number"))
if(b>0)
{
  cat(b,"is a positive number")
  
}
# 3
a1<-9
if(a1 > 11){
  cat(a1, "is greater than 11")
} else{
  cat(a1, "is less than 11")
}

#4
a2<-0
if(a2>0){
  cat(a2, "is positive number")
}else if (a2<0){
  cat (a2, "is negative number")
}else{
  cat (a2, "equals to zero")
}

#5
vect<-c(2,3,10,15,23,14,17,20)
ifelse(vect%%2==0,"even","odd")

#6 nested if else
x<-as.integer(readline())
if(x>0){
  if(x%%2==0){
    print("x is even")
  }
  else{
    print("x is negative")
  }
}else{
  if(x%%2==0){
    print("x is even")
  }
  else{
    print("x is negative")
  }
}

#switch___________________________________________
#switch(expression, case1, case2, case3,......)
# 2 ways of implementation: based on index value, based on matching value 
#case1
a<-switch(3, 
          "r programming",
          "dbms",
          "python",
          "java",
          "excel"
          )
print(a) #based on index value

a<-switch(6, 
          "r programming",
          "dbms",
          "python",
          "java",
          "excel"
)
print(a) # null value

#case 2
b<-"10"
c<-switch(b,
          "3" ="java",
          "6" ="r programming",
          "1" ="python",
          "5" ="dbms",
          "10" ="excel")
print(c) #based on matching value

#next and break
#next is used to skip the any remaining statement in the loop and continue executing.
#and continue executing.
x <- 10:20  
for (val in x) {  
  if (val == 15){  
    next  
  }  
  print(val)  
}  

#the break statement is used to break the execution and for an immediate exit from the loop. 
a<-1    
while (a < 20) {    
  print(a)    
  if(a==15)    
    break    
  a = a + 1    
}
#loops********************************************************
#repeat loop
#1
i <- 5
repeat {if (i > 25) break else {print(i); i <- i + 5;}}

#2
v<-c("hello","loop")
count<-2
repeat{
  print(v)
  count=count+1
  if(count>5){
    break  
  }}


# while loop**********************************************************
number<-as.numeric(readline())
sum=0
while(number<=10){
  sum=sum+number
  number=number+1
}
print(sum)

#***********************************************************************

v<-c("hello","world")
count<-2
while(count<=7){
  print(v)
  count=count+1
}
#**********************************************************************
n = as.numeric(readline("Enter a value = "))
cat("numbers from ", n,"to 0")
while(n>=0){
  print(n)
  n=n-1
}
#while statement with break
n<-1
while(n<=10){
  print(n)
  n=n+1
  if(n==6){
    break
  }
}

# while loop  with next statement
# Set an initial value for a variable
x <- 1

while (x < 20) {
  if (x == 4) {
    # Skip iteration when x is 4
    x <- x + 1
    next
  }
  print(paste("The current value of x is:", x))
  x <- x + 1
}
# while loop with if..else
x <- 1

while (x <= 10) {
  if (x %% 2 == 0) {
    print(paste(x, "is even"))
  } else {
    print(paste(x, "is odd"))
  }
  x <- x + 1
}

#while loop to print odd number between 1 to 10
number=1
while(number<=10){
  if(number%%2==0){
    number=number+1
    next
  }
  print(number)
  
  number=number+1
}

#program to check number is palindrome or not
a <- as.numeric(readline(prompt="Enter a four digit number: "))
num<-a  
rev<-0  
while(a!=0){  
  rem<-a%%10  
  rev<-rem+(rev*10)  
  a<-as.numeric(a/10)  
}  
print(rev)  
if(rev==num){  
  cat(num,"is a palindrome num")  
}else{  
  cat(num,"is not a palindrome number")  
} 

#*****************************************
#* Program to check a number is Armstrong or not.
num = as.numeric(readline(prompt="Enter a number: "))  
sum = 0  
temp = num  
while(temp > 0) {  
  digit = temp %% 10  
  sumsum = sum + (digit ^ 3)  
  temp = floor(temp / 10)  
}  
if(num == sum) {  
  print(paste(num, "is an Armstrong number"))  
} else {  
  print(paste(num, "is not an Armstrong number"))  
}  
#********************************************************************************************************************************
# for loop is a repetition control structure. It allows us to efficiently write the loop that needs to execute a certain number of time.
x<- LETTERS[1:10]
for (i in x){
  print(i) 
}

for (i in 1:10)
{
  print(i ^ 2)
} 
#********************************************************************
subjects <- c('java', 'python', 'r programming', 'dbms', 'excel','networking')  
for ( i in subjects){   
  print(i)  
} 
# for loop in vectors
v<- c(1,3,5,7,9)
for(i in v)
{
  print(i)
}
subjects <- c('java', 'python', 'r programming', 'dbms', 'excel','networking')  
for ( i in subjects){   
  print(i)  
} 

# for loop in list
l<- list("hello", 10, 3+2i, TRUE)
for ( i in l){   
  print(i)  
}

#for loop in matrix
m<- matrix(c(1,2,3,4), nrow=2, ncol=2)
for ( i in m){   
  print(i)  
}
#nested for loops
#1
seq1<-c(1,2,3)
seq2<-c(1,2,3)
for(i in seq1){
  for(j in seq2){
    if((i+j)%%2==0){
      print(paste(i,j))
    }
  }
}
#***********************************************************
#2 count number of even values in the following list using for loop
vect<-c(2,5,3,9,8,11,6)
count<-0
for(item in vect){
  if(item%%2==0){
    count=count+1
  }
  
}
print(count)

#******************************************************
#3
n<-as.numeric(readline())
fact=1
for(i in 1:n){
  fact=fact*i
}
cat("Factorial of", n, "is", fact)
#*************************************************
#4 print the matrix
# Initialize a 3x2 matrix with zeros
matrix_3x2 <- matrix(0, nrow = 3, ncol = 2)
# Loop through rows and columns to populate the matrix
for (i in 1:3) {
  for (j in 1:2) {
    # You can replace the following line with your own logic to fill in the values
    matrix_3x2[i, j] <- i + j
  }
}

# Print the resulting matrix
print(matrix_3x2)

#*********************************************************
#5 print any table
num <- as.numeric(readline("Enter a number for the table: "))
# Print the multiplication table using a for loop
cat("Multiplication Table for", num, ":\n")
for (i in 1:10) {
  result <- num * i
  cat(num, "x", i, "=", result,"\n")
}
#****************************************************
#6 pattern print
for (i in 1:5) {
  for (j in 1:i) {
    cat("* ")
  }
  cat("\n")
}
#**************************************************
#7 This program calculates and prints the sum of elements in a 3x3 matrix.
matrix_data <- matrix(1:9, nrow = 3)
sum_matrix <- 0

for (i in 1:3) {
  for (j in 1:3) {
    sum_matrix <- sum_matrix + matrix_data[i, j]
  }
}

cat("Sum of matrix elements:", sum_matrix, "\n")
#********************************************************
#8
for(number1 in 1:5) { 
  
  for(number2 in 1:5) { 
    # Print the sum of number1 and number2 
    print(paste(number1, "+", number2, "=",  
                number1 + number2)); 
  } 
} 


# 10 examples for if statement take all inputs from user
# check even and odd in case of vector by using if else statement
# check the less than or greater than by using if else statement
# check the number is present in vector or not by using if else statement
# 5 e more examples for if else statement
# check whether the number is positive, negative, or equals to zero by using else if note: take input from user
# 5 more examples for  else if ladder