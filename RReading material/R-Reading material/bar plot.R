#barplots
#is the one of the most efficient ways of representing data
#can be used to  summarize large data in visual form
#it has the ability to represent data that shows changes over
#time,which helps us to visualize trends
temp<-c(22,27,26,24,23,26,28)
result<-barplot(temp)
#---------------------------------
temp<-c(22,27,26,24,23,26,28)
result<-barplot(temp,main="Result")
#-------------------------------------------
temp<-c(22,27,26,24,23,26,28)
result<-barplot(temp,main="Result",
                xlab="x-axis",
                ylab="y-axis",
                names.arg = c("sun","mon","tue","wed","thur","fri","sat"),
                              col="Blue")
#-------------------------------------------
#to change texture of the graph by using density parameter
temp<-c(22,27,26,24,23,26,28)
result<-barplot(temp,main="Result",
                xlab="x-axis",
                ylab="y-axis",
                names.arg = c("sun","mon","tue","wed","thur","fri","sat"),
                col="Blue",density=10)
#----------------------------------------------------
#horizontal graph instead of vertical
temp<-c(22,27,26,24,23,26,28)
result<-barplot(temp,main="Result",
                xlab="x-axis",
                ylab="y-axis",
                names.arg = c("sun","mon","tue","wed","thur","fri","sat"),
                col="Blue",density=10,horiz=TRUE)
#------------------------------------------------------
#stacked bar charts
#for that we need the data in matrix form
data<-matrix(c(122,203,167,118,528,178,673,212),nrow=2,ncol=4)
data
result<-barplot(data,main="main title",xlab="class",
                names.arg = c("Ist","2nd","3rd","4th"),
                col=c("red","green"))
legend("topleft",c("c1","c2"),fill=c("red","green"))
