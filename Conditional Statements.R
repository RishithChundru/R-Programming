#Conditional Statement
#if
#if else
#else if ladder
#nested if
a<-45L
if(is.integer(a)){
  print('a is an integer')
}else{
  print('a is not a integer')
}
class(a)

# Take input from user
# Using print()
x<-readline("Enter a number: ")
if(x==1){
  print('It is one')
}else{
  print('it is another number')
}

# Using paste()
x<-readline("Enter a number: ")
if(x==1){
  paste(x,'It is one')
}else{
  paste(x,'it is another number')
}

# Using cat()
x<-readline("Enter a number: ")
if(x==1){
  cat(x,'It is one')
}else{
  cat(x,'it is another number')
}
##
x<-readline("Enter a number: ")
if(as.numeric(x)){
  cat(x,'is numeric')
}else{
  cat(x,'is not numeric')
}

# check eligibilty for voting

x<-readline("Enter your age: ")
y<-18
if(x>=y){
  cat('he/she can vote')
}else{
  cat('not eligible')
}
##
x<-readline("Enter your age: ")
y<-18
if(x>=y){
  cat('he/she can vote')
}else if(a<18){
  cat('not eligible')
}else{
  cat('Enter correct age')
}

# Searching pattern
y=c('R','is','stastical','programming','language')
y
if('programming' %in% y){  ## %in% is used to find word in particular vector
  print('word is present in vector y')
}else{
  print('word is not found in vector y')
}

## find whether input contains vowel or consonants

a<-readline("Enter a name: ")
if(a=='a' | a=='e' | a=='i' | a=='o'| a=='u' | a=='A' | a=='E' | a=='I' | a=='O' | a=='U'){
  cat('it is vowel')
}else{
  cat('it is consonant')
}

# Nested if
# Find greater number a,b,c
{
a<-as.integer(readline("Enter first number: "))
b<-as.integer(readline("Enter second number: "))
c<-as.integer(readline("Enter third number: "))
if(a>b & a>c){
  paste(a,'is bigger than ',b,c)
}else if(b>a & b>c){
  paste(b,'is bigger than ',a,c)
}else{
  paste(c, 'is bigger than ',a,b)
}
}

## find entered number is positive or negative
{
a<-as.integer(readline("Enter a number: "))
if(a<0){
  print('the number is negative')
}else if(a==0){
  print('the  number is zero')
}else{
  print('the number is positive')
}
}

## find whether number is even or not

{
a<-as.integer(readline("Enter a number: "))
if(a%%2==0){
  cat(a,"is even!")
}else{
  cat(a,'is odd!')
}
}

