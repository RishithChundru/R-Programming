#data Visualization
# pie chart represent information in the form of sizes of a circle
# in different colours
# pie chart is created with pie() take input as vector
# pie(input,labels,main,col)
library(graphics)
library(plotrix)
x<-c(12,25,55,69)
label<-c('India','china','japan','Russia')
pie3D(x,labels=label,main='Country sales',col=rainbow(x))
colors<-c('red','orange','yellow','green')
pie(x,labels,main='Country sales',col=colors)
energy<-c('coal','gas','petrol','nuclear','other')
production<-c(29,63,23,45,67)
a<-data.frame(Energy=energy,Production=production)
a
pie(production,energy,main='Country_sales',col=rainbow(production))


# represent a numerical value in a length or height of lines.
# typically implement categorical data
# created by barplot()
# barplot(h,x,y,main,names.arg,col)
h2<-c(12,34,56,67,44)
m2<-c('feb','march','april','may','june')
barplot(h2,xlab='month',ylab='revenue',main = 'revenue bar chart',names.arg=m2,col='orange',border='black')
a<-c('jack','john','ram','sham','pant')
b<-c(52,63,40,60,99)
barplot(b,xlab='names',ylab='marks',main='student bar chart',names.args=a,col='red',border='black')


###
type<-c('Grocery','shopping','study','Recreation')
cost<-c(50,100,500,300)
barplot(cost,xlab='type',ylab='cost',main='type bar chart',names.arg=type,col='orange',border='black')

###
df1<-data.frame(type=type,cost=cost)
df1
library(sqldf)
s1<-sqldf('select * from df1 order by cost desc')
s1
barplot(s1$cost,names.arg=s1$type,xlab='type',ylab='expenditures',main='UK expenditures per month',col='green',border='black')

# scatter plot
# it is typically used for comparing variables
# plot(x,y,xlab,ylab,xlim,ylim,main,)
data("mtcars")
View(mtcars)
mtcars
plot(x=mtcars$wt,y=mtcars$mpg,xlab='weight',ylab='mileage',xlim=c(2.5,5),ylim=c(15,30),main='weight v/s mileage')

# line graph-type-o,l,p
# plot(x,type,xlab,ylab,col,main)
v<-c(56,21,16,33,49,37)
plot(v,type='o',xlab='months',ylab='temp',col='red',main='temperature jan-june')
plot(v,type='l',xlab='months',ylab='temp',col='red',main='temperature jan-june')
plot(v,type='p',xlab='months',ylab='temp',col='red',main='temperature jan-june')
plot(v,type='s',xlab='months',ylab='temp',col='red',main='temperature jan-june')

t2<-c(31,45,23,56,41)
lines(t2,type='l',col='skyblue')


