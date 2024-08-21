library(graphics)
a<-c(1:30)
b<-c(1:30)
#scatter plot
plot(a,b,xlab="Direction",ylab="value",main="Direction chart",col='red',xlim=c(2,16),ylim=c(5,23))
a<-c(12,33,45,67)
b<-c("East","West","South","North")     
#piechart
pie(a,b,main="Pie chart",col='red')
#barplot
barplot(a,names.arg=b,xlab="Direction",ylab="value",main="bar plot",col='red')
#line graph
plot(a,type='o',main="line graph",col='red')#type=l,o,p,s

#heatmap
df<-as.matrix(mtcars)
df
heatmap(df,scale='column',Colv=NA,Rowv=NA,col=hcl.colors(256))
?heatmap
#bollinger band
library(quantmod)
getSymbols("AAPL")
chart_Series(AAPL,"2015-12::2020-12")

#ggplot
library(ggplot2)
p<-ggplot(mtcars,aes(x=mpg,y=wt))
p+
  geom_col(col='red')+
  facet_wrap(~gear)+
  geom_smooth(method="lm")+
  coord_cartesian(xlim=c(10,35),ylim=c(1,10))

#plotly
library(plotly)
df<-iris
df
plot_ly(df,x=~Sepal.Length,y=~Sepal.Width,col='red')
plot_ly(df,x=~Sepal.Length,y=~Sepal.Width,col='pink')
#histogram
attach(iris)
plot_ly(x=Sepal.Length,type="histogram")

#addtrace plot_ly
a<-c("East","West","North","South")
b<-c(12,11,5,6)
c<-c(23,4,5,78)
df<-data.frame(a,b,c)
fig<-plot_ly(df,x=~a,y=~b,type="bar",col='red',name="b values")
fig
fig1<-fig%>%add_trace(fig,y=~c,name="c values",col='green')
fig1
