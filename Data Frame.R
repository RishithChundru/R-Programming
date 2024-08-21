# A data frame is a two dimensional data structure,store data 
# Data frames have rows and columns
# data frames are heterogeneous
# the data stored must be numeric,character or factor type.
# each column can be a different vector
# data.frame() function to create a data frame.

#create a data frame
a<-data.frame(rollno=c(1:5),name=c('a','b','c','d','e'),marks=c(12,28,19,20,25))
a

#structure of data frame
str(a)

b<-data.frame(Empid=c(11:15),
              Ename=c("Rishith","Sasank","Ram","shyam","ravi"),
              Salary=c(35000,35000,35000,35000,35000),Hiringdate=c("22               Jan","30 mar","1 april","2 may","4 august"))
b

# Extract by column(by $,[[]], indexing)
a$rollno
a$name
a$marks
b$Empid
b$Ename
b$Salary
a[,1] # by using indexing
c<-data.frame(a$rollno,a$marks) # extracting two fields by using name
c
d<-data.frame(a[,1],a[,3]) # extracting two fields by using indexing
d
e<-a[,c(1,3)] # extracting two fields by using indexing
e
# extract by row
a[c(1:3),]
a[1,]
a[c(2,5),]
# extract rows and columns
a[c(2,3),c(1,3)]
b[c(1,3,5),c(1,3)]

# add rows and columns in existing table using rbind(),cbind()
z1<-c(6,'f',28)
rbind(a,z1) # adding rows
a1<-c('chd','pgw','Del','gun','vlp')
cbind(a,address=a1)

#update name of rollno: 2 by z
#update marks of rollno: 4 to 6 by 30
a[2,2]<-"z"
a
#deletion 
a[-5,]#deleting row
a[,-4] #deleting column
colnames(a)[1]<-"Names"
a
colnames(a)[3]<-"Student_marks"
a
names(a)[2]<-"Name"
a
# combine two dataframes by rbind(df1,df2),cbind(df1,df2)
cbind(a,b)
rbind(a,b)
# converting list into data frame
a<-list(c("Apple","Mango","Guava"),c(100,250,150),c("3kg","4kg","6kg"))
a
names(a)<-c('Fruit','price','Quantity')
a
b<-data.frame(a)
b
