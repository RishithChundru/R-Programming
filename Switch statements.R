# r switch statement
# it is a multi-way branch statement
# provides an easy way to dispatch execution for different parts of code
# this code is based on the value of expression 
# if expression type is a character string
# the string is matched on the listed cases
# if there is more than one match
# the first match element is used
# no default case is available
# if no case is matched,an unnamed case is used
# two types: based on index,based on matching values

#Type: 1 (Based on Index)
#switch (expression as input,case1,case2......)
a<-switch(2,23,56,89,65)
print(a)
b<-switch(1,'cse','mech','ece','civil','eee')
print(b)
c<-switch(5,1,2,3,4,5)
c
ax=1
bx=2
c<-switch(ax+bx,'cse','mech','ece','civil','eee')
print(c)

# Type: 2(Based on Matching values)
# switch(expression or values input,case1Value1,case2Value2......)
z1='2'
a<-switch(z1,'1'='ram','2'='shyam','3'='mohan','4'='jack')
print(a)

#Calculator using switch statement
{
a=as.integer(readline("Enter first number: "))
b=as.integer(readline("Enter second number: "))
cat("Enter + for addition\n")
cat('Enter - for subtraction\n')
cat('Enter / for division\n')
cat('Enter * for multiplication\n')
c=readline("Enter operator: ")
if(c=='+'|c=='-'|c=='/'|c=='*'){
d<-switch(c,'+'=a+b,'-'=a-b,'/'=a%/%b,'*'=a*b)
print(d)
}
else{
  print("Invalid operator")
}
}