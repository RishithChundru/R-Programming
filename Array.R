#array is multidimensional data structure
#array is created by array()
#can create composition of multiple matrices in a array
v1=c(3:11)
v2=c(12:21)
a<-array(c(v1,v2),dim=c(3,3,3))
a
#naming
row_name=c('r1','r2','r3')
col_name=c('c1','c2','c3')
m<-c('mat1','mat2','mat3')
a<-array(c(v1,v2),dim=c(3,3,3),dimnames = list(row_name,col_name,m))
a

#accessing 
a[2,,1] # 2nd row elements from matrix1
a[3,2,2]
a[,2,1]
a[c(1,2),,2]

#updating
a[2,,2]<-100
a
a[,,1]>1
a
a[,,1]>1
a
a[-2,,1]
a[c(-1,-2),,2]
v1<-c(1:10)
v2<-c(11:20)
a<-array(c(v1,v2),dim = c(3,3,2))
a
b<-array(c(v1,v2),dim=c(2,2,5))
b
a/b