# creating a vector
a<-c("true","false","false","true")
a
class(a)

#converting vector into factor
b<-factor(a)
print(b)
length(b)
length(levels(b))

b[7]<- "true"
b
#accessing elements
b[1] #1st element
b[c(2,4)] #2nd and 4th element
b[-2] #accessing all elements except 2nd Orange
#accessing elements using logical operators
x<-c("north","east","south","west","north","west")
y<-factor(x)
y
y[c(FALSE,TRUE,FALSE,TRUE,FALSE,TRUE)]

#modification 
y[1]<-"west"
y
y[3]<-"hello" #error invalid factor level

#adding value to the level
levels(y)<-c(levels(y),"other", "bye")
y
y[2]<-"other" 
y

#changing the order of the levels
p<-c("north","west","soth","east")
p
q<-factor(p)
q
r<-factor(p,levels=c("east","west","nort","south"))
r

x<-c("zeenat", "zara", "zoha", "zoya")
y<-factor(x, levels = c("zoya", "zeenat", "zara", "zoha"))
y
#generating factor levels
s<- gl(3,5,labels=c("R","DBMS","PYTHON"))  
s
 






#create a factor of 10 elements
#access 8th value
#access 6th and 9th value
#access 1st, 2nd, 3rd, and 4th value
#access all values except 7th value
#access all values except 5th and 10th values
#access all values except  6th, 7th, 8th, 9th values
#access all values except 2nd, 4th,and 6th
#access 2nd,5th, and 8th element by using logical values
#modify the value of 3rd element
#modify the value of 7th element
#add 3 more levels
#after adding levels modify the value of 8th element
#after adding levels modify the value of 10th element
#change order of levels
#generate 4 factor levels and repeat values 5 times 
