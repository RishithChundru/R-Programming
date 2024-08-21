# apply family functions
# apply()-implement aggregate function on rows and columns
# input-matrix,array,dataframe
# output-vector
# syntax-apply(input,margin,function)
# margin1-row,margin2-column
x<-matrix(c(1:12),nrow=3,ncol=4,byrow=TRUE)
x
a<-array(c(1:21),dim=c(3,3,3))
a
apply(a,1,sum)
apply(x,1,sum)
apply(x,2,min)
apply(x,2,sum)
class(apply(x,2,sum))

##########
a<-data.frame(sales1=c(300,250,100,50),sales2=c(600,250,200,90))
a
b<-apply(a,1,mean)
b
c<-apply(a,2,mean)
c
# find max element form sales
apply(a,2,max)
class(apply(a,2,mean))

# lapply()
# input-vector or list
# output-list
# syntax-lapply(input,fun)
a<-c('cse','ece','mech','eee','civil')
a
lapply(a,toupper)
class(lapply(a,toupper))

# explicit function
# find the square of numbers
f1<-function(x){
  print(x^2)
}
b1<-as.numeric(readline("number:"))
lapply(b1,f1) 

# sapply()
# x: A vector,list or data frame containing the data
# to be analyzed
# output: by default as input
# sapply(input,fun)
a1<-c(4,9,16,25)
sapply(a1,sqrt)
sapply(a1,sqrt,simplify=FALSE)
class(sapply(a1,sqrt))

# tapply()
# create a subset of vector then apply functions to each of subsets
# syntax: tapply(input,index,fun)
sal<-c(200,300,789,465,451,256)
emp<-c('m','m','f','m','f','f')
tapply(sal,emp,mean)

sal1<-c(9800,10000,6000,9000,8600)
dept<-c('IT','CSE','IT','MARKETING','MARKETING');
tapply(sal1,dept,mean)
# date and timestamp
date()
Sys.Date()
Sys.time()
Sys.timezone()

# handling missing values
# NA and Nan are reserved words that indicate a missing values
v<-c(2,5,NA,9,NA,NA)
v
is.na(v) # return logical vector
 
# nan
v2<-c(2,4,NA,34,0/0)
is.nan(v2)

# extract values except for NA and Nan values
x<-c(2,4,NA,3,5,NA)
d<-is.na(x)
d
x[!d]

# second method
x[!is.na(x)]
x[is.na(x)]
# missing value by data filter function
d1<-data.frame(c1=c(1,2,3,4,5),c2=c('a','b','c','c','d'))
d1
d1[2,2]<-NA
d1
d1[5,]<-NA
d1
sum(is.na(d1))
colSums(is.na(d1))
na.exclude(d1)#exclude every row containing even one NA
library(visdat)
vis_miss(d1)
vis_dat(d1)
vis_guess(d1)
?vis_miss
?vis_dat
?vis_guess