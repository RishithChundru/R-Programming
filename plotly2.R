# install.packages("plotly")
library(plotly)
df<-mtcars
dfname<-row.names(mtcars)
plot_ly(data=df,x= ~cyl, y= ~disp)
# plot_ly is just like ggplot but in a more customized way i.e. we can zoom in, zoom out and we can see the data of the plot  by hovering over the scatter point
plot_ly(data=df,x= ~cyl, y= ~disp, color = ~factor(cyl))  # apply different different colors to the scatter points based on the value of cyl
plot_ly(data=df,x= ~cyl, y= ~disp, color = ~factor(cyl),text= ~dfname)


# histogram
attach(iris)
hist<-plot_ly(x=Sepal.Length, type = "histogram")  # this will only work if any dataframe is attached using attach() function
layout(hist, title="Iris dataset",
       xaxis=list(title="Sepal.Length"),
       yaxis=list(title="Count"))
# must give title for x  and y axes in list otherwise won't work


fig<-plot_ly(x=c("beverage","vegetable","dairy"),
             y=c(20,14,25),
             type = "bar",
             color = "orange")
fig
# will create a bar plot with the mentioned properties

library(dplyr)
fig%>%layout(title="Sales by parts",
             xaxis=list(title="parts"),
             yaxis=list(title="no of sold products"))
fig
Parts<-c("Beverage","Vegetable","Diary")
sales_2019<-c(20,14,23)
sales_2020<-c(12,18,29)
df<-data.frame(Parts,sales_2019,sales_2020)
fig<-plot_ly(data = df,x=~Parts,y=~sales_2019, type = "bar",
             name = "2019 Sales")
fig<-fig%>%add_trace(y=~sales_2019,name="2020 Sales")
fig

fig<-fig%>%layout(title="2019 vs 2020",
                  xaxis=list(title=~Parts),
                  yaxis=~list(title="Number of sales"),
                  barmode="group")