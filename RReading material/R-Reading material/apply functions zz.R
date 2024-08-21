#the members of the apply family are apply(), lapply(), sapplay(),
#tapplay(), mapplay()
#these functions are substitutes/alternatives to loops
#Benefits: 1. much more efficient and faster in execution
#2. easy to follow syntax
#syntax of apply function:
#apply(x, margin, fun)
# where x : input data object
#   margin: indicates how the function is applicable whether row_wise/column_wise,
#margin: 1 indicates row_wise
#        2 indicates column_wise
#input                output
#matrix               vector, matrix, array or list
#array                vector, matrix, array or list
#data frame           vector, matrix, array or list
#**********************************************************************************
#e.g 1
m<-matrix(c(1:10), nrow=5, ncol = 3)
m
apply(m,1,sum)#1 represents rows
apply(m,2,sum)#2 represents columns
apply(m,1,median)
apply(m,2,median)
apply(m,1,mean)
apply(m,2,prod)##############################################
multi <- apply(m, 1, function(x) x * 2)
multi
multi <- apply(m, 2, function(x) x * 2)
multi
sub<-apply(m, 1, function(x) x - 2)
sub
sub<-apply(m, 2, function(x) x - 2)
sub
div<-apply(m, 1, function(x) x / 2)
div
div<-apply(m, 2, function(x) x / 2)
div
#******************************************************************************
#lapply function: "l" is list
#lapply deals with list and data frames in the input.
#input                 output
#vector                list
#list                  list
#data frame            list
#lapply(x, fun)#output is always list
#1
a<-c("dbms", "computer networks", "c-programming", "r-programming")
a
result<-lapply(a,toupper)
result
class(result)
unlist(lapply(a,toupper))
#2 
a1<-c(46,63,224)
a1
lapply(a1,sqrt)
#3
list1<-list(x=c(1,2,3),y=data.frame(p=1:5,q=6:10))
list1
lapply(list1,sum)
#4
b<-c(2.2, 4.5, 6.7, 3.9, 4.8, 4.5, 4.7,3.9, 3.6)
result<-lapply(b, mean)
result
class(result)
#*********************************************************************************
# sapply function: it is the simplified form of lapply()
#it has one additional argument simplify with default value as True,
#if simplify= F, then sapply() returns a list similar to lapplay(),
#otherwise it returns the simplest output form possible.
#input                   output
#vector                 vector, matrix, array or list
#list                   vector, matrix, array or list
#data frame             vector, matrix, array or list
#sapply(x,fun)#output:vector,matrix,array depending upon input*************************************
#1
b1<-c(2, 4, 6, 3, 4)
result<-sapply(b1, sqrt)
result
class(result)
#2
b1<-c(2, 4, 6, 3, 4)
result<-sapply(b1, mean, simplify = FALSE)
result
class(result)
#3
p<-c(1:10)
p
sapply(p, function(x) x^3)# output is vector
lapply(p,function(x) x^3)#output is always list
#4
c<-cars
c
sapply(c,max)
avg<-function(x){(min(x)+max(x))/2}
sapply(c,avg)
#*****************************************************
# tapply function: deals with categorical data
#tapply(x,index,fun)
#index determines the factor based on which 
#data is distinguished
#1
salary<-c(20000, 35000, 40000)
designation<-c("professor", "associate professor", "hod")
gender<-c("M", "F","M")
result<-tapply(salary,designation,mean)
result
class(result)  # class is array
#2
df<-data.frame(students=c("sahil","rahul","rita"),
               course=c("dbms","r programming", "python"),
               marks=c(98,90,95))
df
tapply(df$marks,df$course,max)
#2
d<-iris
d
tapply(d$Sepal.Width,d$Species,median)
#mapply function: "m" multivariate
#it applies the specified functions to the arguments one by one.
#note: in mapply(), function is specified as the 1st argument
#whereas in other apply functions as the 3rd argument
#1
res<-mapply(rep,1:4,4:1)
res
class(res)


