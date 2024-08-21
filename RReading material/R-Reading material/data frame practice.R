#creating a data frame
student.data<-data.frame(stu_id =c(1:3), 
                         stu_name =c("sakshi", "ZEENAT", "shubham"),
                         stu_marks= c(10, 9, 8))
print(student.data)
# structure of data frame
str(student.data)
length(student.data)

#extracting data from data frame

#extracting specific column
result<- data.frame(student.data$stu_name)
result
result<-student.data[,1] #by indexing to extract a specific column
result
result<-student.data[2,1] #extracting specific data item from data frame
result

#extracting specific row
res<-student.data[1,]
res
result<-student.data[c(1,2),]
result
#extracting last two rows from data frame
res1<-student.data[2:3,]
res1

res2<-student.data[c(1,2), c(1,2)]
res2

#adding row in the data frame
a<-list(4, "amit", 8)
rbind(student.data,a)

#adding column in the data frame
b<-c("delhi","kashmir","jalandhar")
cbind(student.data,address=b)

#delete rows from data frame
student.data<-student.data[-1,]
student.data

#delete columns from data frame
student.data$stu_marks<-NULL
student.data

#summary of data frame
summary(student.data)

#subset
subset(student.data,stu_id>2)
subset(student.data,stu_marks>8)
subset(student.data,stu_id>2, select= -stu_name)
subset(student.data,stu_marks>8, select= c(-stu_id, -stu_name))

#combine two data frames horizontally
a<-data.frame(id=c(1,7,5),
               name=c("kavita", "munish","parminder"),
               salary=c(100000,150000,89000))
a
a1<-data.frame(id=c(2,6,8),
             name=c("zeenat", "khalid","ankit"),
              salary=c(100000,150000,89000))
a1
cbind(a, a1)
#combine two data frames vertically
res<-rbind(a,a1)
res

#*_________________******
library(help="datasets")
trees
str(trees)
head(trees,n=3)
head(trees,n=10)
head(trees)
tail(trees)
tail(trees,n=3)

trees[10:20,]
trees[,1:2]
trees[,-2]
dim(trees)
trees[1,3]
trees[3,2]

trees[trees$Height>82,]
#*********************************************************************************
#* Cars
cars
str(cars)
cars
head(cars)
tail(cars)
head(cars, n=6)
tail(cars, n=3)
cars[cars$speed>4,]
subset(cars,speed>5, select= dist)
cars[2,]
cars[,2]
cars[2,3]
mean(cars$speed)
mean(cars$dist)
median(cars$speed)
median(cars$dist)
sd(cars$speed)
sd(cars$dist)
min(cars$speed)
max(cars$dist)




#create a data frame of 5 objects
#extract 5th column by using dollar sign
#extract 2nd and 4th column by indexing
#extract 2nd, 3rd and 4th columns by indexing
#extract 3rd row
#extract 2nd and 3rd row
#extract 1st, 2nd , and 3rd row
#extract element at the 2nd row and 3rd column
#extract element at the 3nd row and 3rd column
#extract element at the 1st row and 2nd column
#display the structure of data frame
#print length of data frame
#add 3 more rows
#add 2 more columns
#delete 2nd row
#delete 3rd column
#create two data frames and combine them vertically
#create two data frames and combine them horizontally
#create a subset where roll number is greater than 3
#print subset except stu_name where marks is less than 10 
