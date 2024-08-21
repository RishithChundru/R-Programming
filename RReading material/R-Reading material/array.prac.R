#single dimension array
#array()function with 1 parameter
#data
#syntax: array(data)
a<-c(5,10,15,20,25,20)
arr<-array(a)
class(arr)
arr
#multidimensional array
#array()function with 2 parameters
# data
# dimension- rows,cols and dim
#syntax: array(data,dim=c(no_of_rows,no_of_columns,no_of_arr))
x<-array(a,dim=c(2,3,1))
x
x<-array(a,dim=c(2,3,2))
x
x1<-array(c(1,2,3,4), dim = c(2,2,2))
x1
v1<-c(1,2,3)
v2<-c(4,5,6,7,8,9)
v3<-array(c(v1,v2),dim=c(3,3,2))
v3
res<-apply(v3, c(1), sum)
res
res<-apply(v3, c(2), sum)
res
v4<-c(1,2,3)
v5<-c(4,5,6,7,8,9,10,11)
v6<-array(c(v4,v5),dim=c(3,3,2))
v6
#naming of array
col_name<-c("c1","c2","c3")
row_name<-c("r1","r2","r3")
mat_name<-c("mat1","mat2")
v6<-array(c(v4,v5),dim=c(3,3,2),dimnames = list(row_name,col_name,mat_name))
v6
#accessing elements of an array
print(v6[3,,2])#displays 3rd row of 2nd matrix
print(v6[c(2,3),,1])#prints 2nd and 3rd row of 1st matrix
#1st position represents row and 2nd position represents column
print(v6[3,2,2])# print element in the 3rd row and 2nd column of 2nd matrix
print(v6[2,2,1])# print element in the 2nd row and 2nd column of 1st matrix
print(v6[,2,1])#prints 2nd column of 1st matrix
print(v6[,c(1,2),1])
print(v6[,,1])#prints 1st matrix

#manipulation
v7<-c(6,7,8)
v8<-c(1,5,10,15,20,25,30,35)
v9<-array(c(v7,v8),dim=c(3,3,2))
v9
aperm(v9)
v10<-c(9,10,11)
v11<-c(2,4,6,8,10,12,14,16)
v12<-array(c(v10,v11),dim=c(3,3,2))
v12
v13<-v9+v12
v13

a<-array(1:12, dim = c(3,4))
a
res<-aperm(a)
res


a1<-array(1:12, dim = c(2, 3, 2))
a1
res1<-aperm(a1, c(3,2,1))
res1





#create an array of size(4,4,5)
#assign names to the elements of an array
#access all rows of 1st matrix
#access 2nd and 4th columns of 2nd matrix
#access 2nd, 3rd, and 4th row of 4th matrix
#access 2nd column, 3rd column, and 4th column of 3rd matrix
#access 1st row and 3rd row of 1st matrix
#access element in the 4th row and 3rd column of 3rd matrix
#access element in the 3rd row and 4th column of 1st matrix
#access element in the 1st row and 2nd column of 1st matrix
#access element in the 3rd row and 3rd column of 4th matrix
#access element in the 4th row and 4th column of 5th matrix
#use apply function and perform sum on rows
#use apply function and perform sum on columns
#create two arrays and perform all arithmetic operations




