# iteration statement
# same set of instructions executed multiple statements
# for loop
# condition and range is specified
# for loop can be implemented on sequence,data structure
for(a in 1:10){
  print(a)
}
for(b in seq(1,10,by=2)){
  print(b)
}
 
# for loop with data structure

# for loop with vector
v1<-c(32,89,65-4i,98)
for(c in v1){
  print(rep(c,each=4))
}

# for loop with list
l1<-list(32,89,65-4i,98)
for(a in l1){
  print(a)
}

# for loop using matrix
m1<-matrix(6:12,nrow=3,ncol=3)
for(a in m1){
  print(a)
}

l2<-list(78,45,65,23,25,97,99,65)
sum=0
for(a in l2){
  if(a%%2!=0){
    sum=sum+a
  }
}
print(sum)
