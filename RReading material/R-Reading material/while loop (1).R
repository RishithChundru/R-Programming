#1 repeat
#repeat loop executes the same code again and again until a stop 
#condition is met
v<-c("hello","loop")
count<-2
repeat{
  print(v)
  count=count+1
if(count>5){
  break  
}}
#2***************************************************
i <- 5
repeat {if (i > 25) break else {print(i); i <- i + 5;}}
#**********************************************************
#while loop
#while loop is used when you don't know the exact number of times the loop 
#is repeated
#1
number<-as.integer(readline())
sum=0
while(number<=10){
  sum=sum+number
  number=number+1
}
print(sum)
#****************************************************
#2
v<-c("hello","loop")
count<-2
while(count<=7){
  print(v)
  count=count+1
}
#************************************************************
#3Write a program to print countdown from n to 0 
#using while loop

n = as.numeric(readline("Enter a value = "))
cat("numbers from ", n,"to 0")
while(n>=0){
  print(n)
  n=n-1
}
#4********************************************************
#while statement with break
n<-1
while(n<=10){
  print(n)
  n=n+1
  if(n==6){
    break
  }
}
#While Loop with If .. Else
x <- 1
while (x <= 10) {
  if (x %% 2 == 0) {
    print(paste(x, "is even"))
  } else {
    print(paste(x, "is odd"))
  }
  x <- x + 1
}
#While with next statement
#The next line instructs R to move on to the next iteration 
#of the loop and skip the current one. based on a condition, 
#over a subset of the loop’s iterations without ever leaving the loop.
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
#***********************************************
n<-as.integer(readline(prompt = "Enter no:of students:"))

df<-data.frame(S.NO=c(),NAME=c(),ROLL=c(),GENDER=c(),CGPA=c())
count=1
while (count!=n+1) {
  df.name<-readline("Name:")
  df.roll<-as.integer(readline("roll:"))
  df.gender<-readline("Gender:")
  df.cgpa<-as.numeric(readline("Cgpa:"))
  df<-rbind(df,data.frame(S.NO=c(count),NAME=c(df.name),ROLL=c(df.roll),GENDER=c(df.gender),CGPA=c(df.cgpa)))
  count=count+1
}
print(df)

#***********************************************