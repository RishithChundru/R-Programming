#creating list with same datatypes
#list is created by list()
#numeric list
n<-list(2,4,5.6,7)
n
n[1:3]
#character list
c<-list('ram','shyam','ramit')
c
class(c)
#creating list of different datatypes
l1<-list(1,'abc',TRUE)
l1
class(l1)
l1[1]
class(l1[1])
class(l1[2])
class(l1[[2]])
class(l1[[3]])
class(l1[[2]])
class(l1[[1]])
#list can be list of vectors
l2<-list(c(4,5,6),c('ram','shyam','ramit'),c(TRUE,FALSE))
l2
l2[[1]][1]
class(l2[[1]][3])
class(l2[[3]][1])
l3<-list(c('shyam',3,FALSE),list('shyam',3,FALSE))
l3
l3[[1]][1]
l3[[2]][[3]]
class(l3[[1]][1])
class(l3[[1]][2])
class(l3[[1]][3])
class(l3[[2]][1])
class(l3[[2]][2])
class(l3[[2]][[3]])
class(l3[[2]][3])
class(l3[[1]][[1]])
class(l3[[1]][[3]])
#NAMING OF LIST
list1<-list(c(1,2,3),c('arun','jack','rishith'),c('btech','bca','bcom'))
list1
names(list1)<-c('Roll numbers','Names','Courses')
list1
#ACCESSING LIST
list1[[1]][3]#indexing
list1[[3]][1]
list1[[2]][2]
list1['Courses']#naming
list1['Roll numbers']
list1$Courses
list1$Names[3]#using dollar symbol to extract the name from list
#NAMING LIST WITHOUT list
emp_id=c(2,3,4)
emp_name=c('arun','sam','sammy')
salary=c(1200,3400,5000)
emplist<-list('ID'=emp_id,'ename'=emp_name,'salary'=salary)
emplist
emplist$ename[1]
emplist$salary[1]
#search
'arun' %in% emplist$ename
l1<-list('red','blue','yellow','green')
l1
l1[3]<-'orange'
l1
#append
l2<-append(l1,'skyblue')
l2
l2<-append(l1,'brown',after=1)
l2
l2[-3]#delete
#SEARCH
'red'%in%l2
l2[c(1,3)]<-'yellow'
l2
l2[c(1:4)]<-'yellow'
l2
l3=c(l2,l1)
l3
l4=merge(l2,l1)
l4
