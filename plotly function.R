library(plotly)
#graph present in digital or online format
#make interactive graph
# more customizable than ggplot2
# render graphs in higher resolution 
View(mtcars)
df<-mtcars
df
name<-row.names(df)
name
plot_ly(data=df,x=~cyl,y=~disp)
plot_ly(data=df,x=~cyl,y=~disp,color=~factor(cyl))
plot_ly(x=c("beverage","vegetable","diary"),
        y=c(20,40,60),type="bar",color='green')

#compare two sales

parts<-c("beverage","vegetable","diary")
sales_2019<-c(20,14,23)
sales_2023<-c(12,18,19)
df<-data.frame(parts,sales_2019,sales_2023)
df
fig<-plot_ly(data=df,x=~parts,y=~sales_2019,type='bar',name='2019 sales')
fig
fig1<-fig%>%add_trace(y=~sales_2023,name='2023 sales')
fig1

#bollinger band for stock market
library(quantmod)
getSymbols("AAPL")
head(AAPL,n=10)
chart_Series(AAPL,subset='2007-05::2009-01')
