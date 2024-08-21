#For loop is useful to iterate over the elements of a list, 
#data frame, vector, matrix, or any other object.
#1
vect1<-c(10,20,3,4,5)
for (i in vect1){
  print(i)
}
#*******************************************************
#2
vect<-LETTERS[1:4]
for (i in vect){
  print(i)
}

#3 Count the even number
num<-c(1,2,3,10,20)
count=0
for(i in num){
  if(i%%2==0){
    count=count+1
  }}
  print(count)
#*****************************************************************
#4
for (i in 1: 4){
    print(i ^ 2)
  }
#****************************************************************
#5
# R Program to demonstrate the use of
# for loop along with concatenate
for (i in c(-8, 9, 11, 45)){
    print(i)
  }
#*****************************************************************
#6  for loop with break statement
num<-c(1,2,3,10,20)
for (i in num){
  if(i==10){
    break
  }
  print(i)
}
#************************************************
#7 for loop with next statement
num<-c(1,2,3,10,20)
for (i in num){
  if(i==10){
    next
  }
  print(i)
} 
#*********************************************************
#*#8
for (i in seq(from=5,to=25,by=5)){
  print(i)
  }
#********************************************************
#There are two important properties of looping statements to remember. 
#First, results are not printed inside a loop unless you explicitly 
#call the print function.
for (i in seq(from=5,to=25,by=5)) i

#Second, the variable var that is set in a for loop is changed in 
#the calling environment:
i <- 1
for (i in seq(from=5,to=25,by=5)) i
i

#*******************************************************************
# print sum of square of first n natural numbers
n=as.numeric(readline())
a=0
for(i in 1:n){
  a=a+(i^2)
}
print(paste(a))    

#*******************************************************************
name=c()
n=as.integer(readline('Enter size of array: ')) 
for(i in 1:n){
  name[i]=readline()
}
name
## 10 examples for if statement take all inputs from user
# check even and odd in case of vector by using if else statement
# check the less than or greater than by using if else statement
# check the number is present in vector or not by using if else statement
# 5 e more examples for if else statement
# check whether the number is positive, negative, or equals to zero by using else if note: take input from user
# 5 more examples for  else if ladder
