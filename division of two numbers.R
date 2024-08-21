#division of two numbers
num1=as.numeric(readline("Enter 1st number: "))
num1
num2=as.numeric(readline("Enter 2nd number: "))
num2
c=num1%%num2
d=num1%/%num2
paste('remainder is ',c)
paste('quotient is ',d)