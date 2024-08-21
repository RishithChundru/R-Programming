#matrix- matrix is just a two-dimensional array:
m <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),nrow=3,ncol=4)
m
t(m)
rbind(m,c(13,14,15,16))
m
m <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),nrow=3,ncol=2)#warning data length differs from size of matrix
m
n <- matrix(data=c(101:112),nrow=3,ncol=4)
n
attributes(n)
n[3]
n[3,3]
n[1:2,1:2]
n[1:2,]
n[3:4]
n[,3:4]
#replace the value in matrix
n[1] <- 1000 
n
n[1:2,1:2] <- matrix(c(1001:1004),nrow=2,ncol=2)
n
#both methods give you same result
n[1:2,1:2] <- c(1001:1004)
n
#*---------------*-----------------*
x=matrix(c(1:9),3,3)
x
x=matrix(c(1:9),3,3,byrow=TRUE)
x
x=matrix(c(1:6),3,3)
x
x=matrix(c(1:9),nrow=1)
x
x=matrix(c(1:9),ncol=1)
x
class(x)

#********------------------**********************
Mat1=matrix(c(3:14),nrow = 4,byrow = FALSE)#arrange the values columnwise
Mat1
Mat1=matrix(c(3:14),nrow = 4,byrow = TRUE)#arrange the values rowwise
Mat1
Mat1=matrix(c(3:14),nrow = 4,ncol=3,byrow = TRUE)#arrange the values rowwise
Mat1
names<-c("r1","r2","r3","r4")
colnames<-c("col1","col2","col3")
Mat1=matrix(c(3:14),nrow = 4,byrow = TRUE,dimnames =list(names,colnames))
Mat1
attributes(Mat1)
dim(Mat1)<-NULL# the object will be transformed into a vector
Mat1
#to add rows and columns of the matrix use cbind and rbind functions
rbind(Mat1,c(15,16,17))#temporary added row
Mat1 #matrix will remains same as that of original
cbind(Mat1,c(20,30,40,50))##temporary added row
#matrix addition subtraction
#consider two matrix of 2*3
matrix1<-matrix(c(1,3,5,10,6,9),nrow = 2)
matrix1
matrix2<-matrix(c(10,20,4,5,3,7),nrow=2)
matrix2
#add matrices
result<-matrix1+matrix2
cat("additon of two matrix is:","\n")
result
#subtract matrix
result1<-matrix1-matrix2
cat("subtraction of two matrix is:","\n")
result1
#multiply matrix
result2<-matrix1*matrix2
cat("subtraction of two matrix is:","\n")
result2
#divide matrix
result3<-matrix1/matrix2
cat("division of two matrix is:","\n")
result3
#transpose of a matrix
t(matrix2)
#********--------*****
#%*% (miscellaneous operator)-performs multiplication of matrix with its transpose
mat = matrix(c(1,2,3,4,5,6),nrow=2,ncol=3) 
print (mat) 
print( t(mat)) 
pro = mat %*% t(mat) 
print(pro) 

#create a matrix of 30 elements
#name all rows and columns
#access 3rd row
#access 5th row
#access 6th row
#access 1st column
#access 2nd column
#access 3rd column
#access 4th column
#access element in the 3rd column and 3rd row
#access element in the 2nd row and 5th column
#modify elements by 0 greater than 5
#modify elements by -2 greater than 5
#add two more rows
#add three more columns
#transpose the matrix
#delete 3rd row
#delete 1st column
#create two matrix and perform all arithmetic operations
