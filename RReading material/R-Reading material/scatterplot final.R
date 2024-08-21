#scatter plot
#scatter plots are used to compare variables
#A comparison between variablesis required when we need to define how much 
#one variable is affected by other variable
#plot(x,y,main,xlab,ylab,xlim,ylim,axes)

x<-c(5,7,8,7,2,2,9,4,11,12,9,6)
y<-c(99,86,87,88,111,103,87,94,78,77,85,86)
plot(x,y)
#__________________________________________________________
x<-c(5,7,8,7,2,2,9,4,11,12,9,6)
y<-c(99,86,87,88,111,103,87,94,78,77,85,86)
plot(x,y,main='Result',xlab="X-Label",ylab="Y-Label")
#__________________________________________________________
#We comparing two scatter plot consecutively , 
#we have to use point functions
#character expansion factor(cex)
x1<-c(5,7,8,7,2,2,9,4,11,12,9,6)
y1<-c(99,86,87,88,111,103,87,94,78,77,85,86)

x2<-c(2,2,8,15,8,12,9,7,3,11,4,7,14,12)
y2<-c(100,105,84,105,90,99,90,95,94,100,79,112,91,80)
plot(x1,y1,main="Result",xlab="X-label",ylab="y-label",
     col="red",cex=2)
points(x2,y2,col="blue",cex=2)
#_____________________________________________________________
data<-mtcars[,c('wt','mpg')]
png(file="scatterplot final.png")
plot(x=data$wt,y=data$mpg,xlab="Weight",ylab="Mil",
     xlim=c(2.5,5),ylim=c(15,30),main="weight v/sMil")
dev.off()