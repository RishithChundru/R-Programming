#repetition
a<-rep(c(3,5,6,9),time=2)#vector is repeated by 2 times
a
b<-rep(c(3,5,6,9),each=2)#each element is repeated by 2 times
b
c<-rep(c(3,5,6,9),time=c(1,2,3,4))#it will repeat the numbers according to the index by comparing with time vector
c
#all & any
num1 <- 1:10
num2 <- c(5,8,12,13,20)
any(num1>1,num2>20)
any(num1>17,num2<20)
all(num1>17,num2<20)
#compare two values
d<-as.integer(5)
e<-as.integer(6)
a<-c(d>=e)
a
a<-c(d<=e)
a
a<-d>=e# for only input value ,there is  no need to use c ,For more than one input value we have to use c operator infront of condition
a
#indexing with integer/numeric values
a<-c(5,3,4,2)
a[2]
a<-c(52.3,23.4,36L,TRUE,'lpu')
a[4]
a[2:4]
a[c(4,5)]#multiple indexing
a[c(4,5,2,4)]#duplicate indexing
a<-c(52.3,23.4,36L,TRUE)
a[4]
#character indexing
ab<-c('ram'=1,'sham'=2,'jack'=3)
ab['ram']
ab<-c('ram'=4,'sham'=2,'jack'=3,'ram'=1)#it will print first index given to the character
ab['ram']
#indexing with logical operator
a<-c(1,2,3,4)
b<-a[c(TRUE,FALSE,FALSE,TRUE)]
b
#update element
a<-c(2,3,4,5)
a[2]<-33
a
a[1:4]<-c(33,44,55,66)
a
a<-c(2,3,4,5)
a[c(2,4)]<-c(99,100)
a
a[c(2,3,2)]<-c(88,44,99)
a

#delete 
a<-c(1,2,3,4,5)
b<-a[-2]
b
a<-b
b<-a[c(-2,-4)]#deletes particular elements
b
a<-b
a
a<-c(1,2,3,4,5)
b<-a[c(-1:-3)]#deletes elements in that range
b
a<-b
b
a<-c(1,2,3,4,5)
b<-a[c(-1:-5)]#deletes all elements in that vector
b
a<-b
b
a<-NULL#deletes all elements
a

#sort
a<-c(66,55,234,7,45)
sort(a)#it will print elements in ascending order

sort(a,decreasing = TRUE)#for descending order

a<-c('python','hadoop','spark')
sort(a,decreasing = TRUE)
a<-c(34L,68.3,100,58.9)
sort(a)
sort(a,decreasing = TRUE)
a<-c(34L,68.3,100,58.9,TRUE)
sort(a)
sort(a,decreasing = TRUE)
a<-c(34L,68.3,100,'lpu',58.9,TRUE)
sort(a)
sort(a,decreasing = TRUE)

#named vector elements
a<-c('apple','bmw','lpu')
a
names(a)<-c('fruit','car','University')
a