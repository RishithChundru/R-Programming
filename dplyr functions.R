install.packages("dplyr")
library(dplyr)
v1<-c(100,200,500,600,880,662)
sample(v1,1)
z1<-data.frame(name=c('ram','sham','mohan','jack'),
               age=c(9,7,10,25),
               ht=c(23,'NA','NA',69),
               school=c('yes','yes','no','no'))
z1
# arrange name according to  age
a1 <- arrange(z1, desc(age))
a1
a1 <- arrange(z1, age)
a1
a2<-arrange(z1,ht)
a2
a3<-arrange(z1,school)
a3

# starts_with() print only specific column
select(z1,starts_with("ht"))

# starts_with() #except that column
select(z1,-starts_with("ht"))

# print variables(columns) in range
select(z1,1:2)
a<-select(z1,contains("a"))
a

# display variables of sc
b<-select(z1,contains("sc"))
b

c<-select(z1,matches("o"))
c

# mutate() addition of new variable by function
c<-mutate(z1,New_Age=age+4) #display all variables with new added
c

# transmute()
c<-transmute(z1,New_Age=age+4) #display newly added variable
c

# summarize()
summarise(z1,mean(age))
summarize(z1,max(age))
summarize(z1,median(age))
summarize(z1,min(ht))
summarize(z1,max(ht))
# sample()
sample_n(z1,3)
sample_frac(z1,0.10)
sample_frac(z1,.50)
sample_frac(z1,1.00)
# aggregate on columns
# with(): evaluate an expression within the function to be passed
# it works on data frame only
# with() does not alter the original data any cost
z2<-data.frame(name=c('ram','sham','mohan','jack'),
               age=c(9,7,10,25),
               ht=c(23,65,85,69),
               school=c('yes','yes','no','no'))
z2
with(z2,age*ht)
within(z2,x<-age*ht)
