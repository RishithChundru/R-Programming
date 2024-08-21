#how vector can be created
x=c(2,3,5,8)
x
class(x)

#vector by range
x1<- 5:15
x1

#seq represents sequence of elements
#by argument for gap
x1 <- seq(5,15,by=3)
x1

#character vectors
a<- c("LPU","CC","UNI")
a
class(a)
a<-as.integer(c('123','345','567'))
a
class(a)
a1<- c('123','lpu')
a1
class(a1)

#integer vector
a<- as.integer(c(12,23,34))
a
class(a)

#complex vector
a<-c(2+3i,1+2i)
a
class(a)

#logical vector
a<-c(3&2)
a
class(a)

#mixed value
mix1<- c(12,TRUE,67,42,FALSE)
mix1
class(mix1)
mix2<-c(12,'lpu','jal',34.5)
mix2
class(mix2)
mix3<-c('lpu','jal',TRUE,FALSE)
mix3
class(mix3)
mix4<-c('lpu','jal',23-6i)
mix4
class(mix4)
mix5<-c(34,35L,65.5)
mix5
class(mix5)
mix6<-c(54,'lpu',2+3i)
mix6
class(mix6)
mix7<-c(53.5,'lpu',TRUE,2+3i,FALSE)
mix7
class(mix7)
#access elements of vector by indexing
v1<-c('ram','saham','mohan','ramit')
v1[3]
v1[1]
v1[2:4]#extract elements in specific range

v1[c(2,4)]#multiple indexing

v1[c(3,4,3)]#duplicate indexing

v1[-2]#except 2nd index all values are displayed

v1[4:1]#reverse indexing

#operations on vectors
v2<- c(23,45,43)
v3<- c(34,1,25)
#concatenate vectors
a<-c(v2,v3)
a
class(a)
v4<-c(34.5,36+2i,23)
v5<-c(23,34,45)
a<-c(v4,v5)
a
class(a)

#arithmetic operators
v4+v5
v6<-c(34.5,36+2i,25)
v7<-c(34,63,'python')
a<-c(v6,v7)
a
class(a)
v6+v7
v6%%v7
v1<-mean(c(23,45,67))
v1
v2<-mean(c(23,34.5,36+2i))
v2
v1<-mode(c(2,3,1,2,4,5,2))
v1
v1<-median(c(23,34,45))
v1
#precedence order is complex,numeric,integer,logical,character