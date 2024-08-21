#data structures in R-vectors, matrix, array, list, dataframes
#Vector- It is a structure that can contain one or more values of
#a single type, such as character, number or integer.
#Vectors are used to represent only one-dimensional data , 
#such as set of digits.
#vectors can be implemented in two forms- atomic vector, list
#vectors are sequence of elements which shares the same data types, 
#vectors supports all data types
#elements of vectors are known as components
#length()-no. of elements in a vector

#create a vector
# Atomic vector of type character.
print("abc")

# Atomic vector of type numeric.
print(12.5)

# Atomic vector of type integer.
print(63L)

# Atomic vector of type logical.
print(TRUE)

# Atomic vector of type complex.
print(2+3i)

# Atomic vector of type raw.
print(charToRaw('hello'))
a<-c(1,2,3,5,6)#this function c returns 1-D array or simple vector
b<-c(3:10)

a;b
a[-1]#access all except first value
a[-2]#access all except 2nd value
a[c(2,-2)]#error , cannot mix negative with positive
a[c(1.2:2.2)]#real numbers are truncated to integers
#modify vector elements
a[2]<-10
a
y<-2:-2
y
#modify elements less than 0
y[y<0]<-5
y
y[y<0]
subset(y,y>1)
#truncate y to first 4 elements , 5th will be automatically removed
y<-y[1:4]
y
y<-c(3,3,5,7,10,12,15,20)
y[y>12|y<5]#where y is greater than 12 or less than 5
y[y<12&y>5]#where y is greater than 5 and less than 12
max(y)
min(y)
which(y==max(y))#gives the index value where y value of y is maximum
data1=c(3,5,7,5,3,2,6,8,5,6,9)
data1
which(data1==6)
data1==6# returns true where value is 6 
data1[data1>7]
data1>6 # return boolean value
#deleting a vector by assigning NULL
y<-NULL
y[3]
# Creating a sequence from 5 to 13.
v <- 5:13
print(v)
#Add some extra values to create a new(larger) sample
v1=c(v,15,16,17)
v1

# Creating a sequence from 6.6 to 12.6.
v <- 6.6:12.6
print(v)

# If the final element specified does not 
#belong to the sequence then it is discarded.
v <- 3.8:11.4
print(v)

sq<-seq(1,6)
sq
sq<-seq(1,6, by=.5)#for gap between numbers
sq
sq<-seq(1,6, by=2)
sq
sq<-seq(1,6, length.out=3)#length of vector will be 3
sq
sq<-seq(1,10, length.out=3)#length of vector will be 3
sq
sq<-seq(1,20, length.out=5)#length of vector will be 5
sq
#numeric vector
num1<-c(1.2,3,4,5,10)
num1
class(num1)
intv<-c(5,6,1,8,9)
intv
class(intv)
b=as.integer(intv)
b
class(b)
intv<-c(5L,6L,1L,8L)
intv
class(intv)
#character vector
char1<-c("A","B","D")
char1
class(char1)
#logical vector
log1<-c(TRUE,FALSE,TRUE,TRUE)
log1
class(log1)
#accessing vector element
#by indexing(starts from 1), by using square bracket
sq[3]
sq[1]
char_vec=c("ram"=12,"shyam"=32,"mohan"=22)
char_vec["shyam"]
subject_name <- c("John","Jane","Smith","Jia")
subject_name[3]
temperature <- c(98.1,98.6,101.4,97.2)
flu_status <- c(FALSE,FALSE,TRUE,FALSE)

#all values in a vector
subject_name
temperature
flu_status
#Accessing Vector Elements

#specific values
subject_name[2]

#accessing more than one element
subject_name[c(2,3)]
subject_name[c(2:4)]
#2nd index and 4th index value will be excluded from the result from reverse
temperature[c(-2,-4)]

#range including both
temperature[1:2]

#TO PRINT first two values:
temperature[c(TRUE,TRUE,FALSE,FALSE)]#first two values will be printed as their values are TRUE

temperature[c(0,0,1,1)]# first value will be printed twice
temperature[c(1,1,1,1)]# first value will be printed four times
temperature[c(0,0,2,3)]#2nd and third value will be printed once
temperature[c(0,0,2,2)]#2nd value will be printed twice
#The non-character values are coerced to character type if one of the elements is a character.
# The logical and numeric values are converted to characters.
s <- c('apple','red',5,TRUE)
print(s)
class(s)

#Vector Manipulation
#Vector arithmetic

# Create two vectors.
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11,0,8,1,2)


# Vector addition.
a<- v1+v2
print(a)

# Vector subtraction.
a <- v1-v2
print(a)

# Vector multiplication.
a <- v1*v2
print(a)

# Vector division.
a <- v1/v2
print(a)

#Vector Element Recycling

v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11)
# V2 becomes c(4,11,4,11,4,11)

a <- v1+v2
print(a)

a <- v1-v2
print(a)

#Vector Element Sorting
v <- c(3,8,4,5,0,30)
a <- sort(v)
print(a)

# Sort the elements in the reverse order.
a <- sort(v, decreasing = TRUE)
print(a)

# Sorting character vectors.
v <- c("Red","Blue","yellow","violet")
a <- sort(v)
print(a)

# Sorting character vectors in reverse order.
a <- sort(v, decreasing = TRUE)
print(a)

#Vector Length
v <- c(3,8,4,5,0,30)
a <- length(v)
print(a)

#Repeat Vectors
a <- rep(c(1,2,3), each = 3)
a

a <- rep(c(1,2,3), times = 3)
a

a <- rep(c(1,2,3), times = c(5,2,1))
a



#scan function for multiple user input
data1<-scan()

#Entering text as data using scan()
data2<-scan(what='character')
data2
#variable can be removed or deleted by 'rm' function
rm(a)
a
#if you want to delete all the variable
rm(list=ls())
