#piecharts
#it depicts a special chart that uses 'pie slices' where each
#sector shows the relative sizes of data
#pie function used to create pie chart
syntax:pie(x,labels,radius,main,col)
x<-c(23,56,20,63)
labels<-c("A","B","C","D")
pie(x,labels)
#--------------------------------------------------
x<-c(23,56,20,63)
labels<-c("A","B","C","D")
pie(x,labels,main="Title")
#------------------------------------------------------
x<-c(23,56,20,63)
labels<-c("A","B","C","D")
pie(x,labels,main="GRAPH",col=c("Red","Orange","Blue","Yellow"))

#-------------------------------------------
install.packages("plotrix")
library(plotrix)#3D plotting
x<-c(600,300,150,100,200)
pie3D(x,main="3D",labels=c("A","B","C","D","E"),
      col=c("red","orange","yellow","blue","green"))
