# tidyr package 
# it is used for reshaping and reconstructing data
library(readxl)
c1<-read_excel(file.choose())
View(c1)
#gather(input,key,value)
# gather() for changing column into row, wideto long format
library(tidyr)
c2<-gather(c1,key=features,value=data,mpg:disp)
View(c2)
# spread() for changing rows into columns ,long to wide format
c3<-spread(c2,features,data)
View(c3)
# separate() separate data into multiple columns
c4<-separate(c1,col=production,into=c('production','year'))
View(c4)
# unite() merge two columns
c5<-unite(c4,col='cyl-mpg',c(cyl,mpg),sep='-')
View(c5)
# nest()-nest creates a list columns of data frame.
c6<-nest(c1,key=c('mpg'))
View(c6)
# fill()-for filling missing value
df<-data.frame(month=c(1:6),year=c(1999,rep(NA,time=5)))
df
fill(df,year)
replace_na(df,list(year=2000))
a<-data.frame(person=c('jack','john','sham'),Address_street=c('model town 69','green valley','tanuku'),mobile=c(7656,7688,9888),Qualification=c('MA','BA','BCOM'))
a


b<-gather(a,key=features,value=data,mobile:Qualification)
b
c<-spread(b,features,data)
c
d<-separate(c,col=Address_street,into=c('Address','street'))
d
e<-unite(d,col="Address-street",c(Address,street),sep="@")
e
f<-nest(a,key=c('mobile'))
f
