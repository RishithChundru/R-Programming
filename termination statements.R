# break,next statements
# used in iteration
# break: used to terminate the iteration
# next: used to skip current iteration
for(i in seq(1,10)){
  if(i==5){
    break
  }
  print(i)
}
v1<-c('red','blue','black','green')
for(i in v1){
  if(i=='black'){
    break
  }
  print(i)
}
v1<-c('red','blue','black','green')
for(i in v1){
  if(i=='black'){
    next
  }
  print(i)
}

# while loop

v<-c('r','is','programming','language')
x<-2
while(x<=6){
  print(v)
  x<-x+1
}

# take input from user and number should be printed less than  
# equal to the entered number by user.
a<-as.numeric(readline("Enter number: "))
while(a>0){
  print(a)
  a=a-1
}
# nth term of odd natural number

a<-as.numeric(readline("Enter a number: "))
sum=0
for(i in 1:a){
  if(i%%2!=0){
    print(i)
    sum=sum+i
  }
}
cat("sum : ",sum)

# display the cube of a number upto integer

a<-as.numeric(readline("Enter a number: "))
for(i in 0:a){
  i=i^3
  print(i)
}

# repeat statement -no condition no sequence.
# iteration is terminated by break statement
i=1
repeat{
  if(i==10){
    break
  }
  print(i)
  i=i+1
}

# display the nth term of square natural number and their sum
# using repeat
a<-as.numeric(readline("Enter a number: "))
sum=0
repeat{
  if(i == a){
    sum=sum+i
    break
  }
  print(sum)
}

