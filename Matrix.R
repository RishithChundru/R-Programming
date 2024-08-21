#matrix-two dimensional dataset
#matrix is created by matrix()
#elements area arranged in rows and columns
#matrix(data,nrow,ncol,byrow,dim_name)
mat<-matrix(c(1,2,3,4,5,6))#it prints just numbers in sequence order
mat
mat<-matrix(c(1,2,3,4,5,6),nrow=2,ncol=3)#it prints in a matrix form as 2 rows and with 3 columns
mat
mat<-matrix(c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=TRUE)#now it prints in row wise
mat
a<-matrix(c(2:17),nrow=4,ncol=4,byrow=TRUE)
a
b<-matrix(c('DBMS','C','C++','C#','R',2),nrow=2,ncol=3,byrow=TRUE)
b
#naming matrix
row_name<-c('r1','r2','r3','r4')
col_name<-c('c1','c2','c3')
#dimnames arguement for naming rows and columns
m1<-matrix(c(7:18),nrow=4,ncol=3,byrow=TRUE,dimnames = list(row_name,col_name))
m1
m1<-matrix(c(7:18),nrow=4,ncol=3,byrow=TRUE,dimnames=list(row_name,col_name))
m1
class(m1)
#accessing specified elements 
m1[1,1]
#accessing elements by row
m1[1,]
#accessing elements by column
m1[,2]

m1[1,]
m1[2,]
m1[3,]
m1[4,]
m1[,1]
m1[,2]
m1[,3]
m1[c(3,4),]#accessing 1st and 2nd element by row
m1[,c(1,2)]
m1[c(2,3),]
m1[2,]<-100  #UPDATING
m1
m1[,c(2,3)]<-200
m1
m1[1,3]<-1000
m1
m1[3,3]<-100 #update specified element in matrix
m1
m1[1,]<-100
m1
#update elements by relational operator
m1[m1>1]<-65 # we can update the value which is greater than 1 by 65
m1
m1[m1==65]<-1
m1

#rbind() and cbind() to add rows and columns respectively
c<-cbind(m1,c(21,22,23,24))
c
d<-rbind(m1,c(1,2,3))
d
#arithmetic operations
a<-matrix(c(4:15),nrow=4,ncol=3,byrow=TRUE)
a
b<-matrix(c(10:21),nrow=4,ncol=3,byrow=TRUE)
b
ad<-a+b # to add matrices a and b
ad
ad<-a+5 # to add 5 to all elements in matrix a
ad
c<-as.integer(a/b)
c
d<-a%/%b
d
 
#find the number of rows and columns
dim(d)

#find the dimension of matrix
length(a)

#transpose rows and columns
t(a)

#special matrix by constant
sp<-matrix(11,3,3)
sp
a<-matrix(1,3,3)
a
matrix(3,3,3)
#diagonal matrix
diag(c(5,5,5),3,3)
diag(c(1,1,1),3,3)
diag(5,3,3)
#identity matrix
diag(c(1,1,1),3,3)
diag(1,3,3)
