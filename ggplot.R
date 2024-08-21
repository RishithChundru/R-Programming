install.packages("ggplot2")
library(sqldf) 
library(ggplot2)
a<-iris
View(a)
b<-sqldf("SELECT'Sepal.Length', 'Sepal.Width' FROM a WHERE Species = 'setosa'")
View(b)

###
iris
# layer2: data aesthetics
# map variables in our data onto scales in our graphical representation
# such as x and y coordinates
p=ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width))
p
# layer 3:geometrical layer
# which type of graph you want to plot
p+geom_point()
# layer4: facet layer/optional
#create subplots for other species
p+geom_point()+facet_wrap(~Species)
# layer5: statistical layer
#allow you to plot satistical layer add linear
# regression
p+geom_point()+facet_wrap(~Species)+geom_smooth(method='lm')
#layer 6: coordinate layer
# adjust the x and y coordinates
p+geom_point()+
  facet_wrap(~Species)+
  geom_smooth(method='lm')+
  coord_cartesian(xlim=c(4,8),ylim=c(2,5))

p+geom_col(fill='red')+
  facet_wrap(~Species)+
  geom_smooth(method='lm')+
  coord_cartesian(xlim=c(4,8),ylim=c(2,5))



###
# heat map
# created by heatmap()
# input as matrix
View(mtcars)
d<-as.matrix(mtcars)
d
# normalizing the matrix is done using the scale
# arguement of heatmap()
heatmap(d,scale='column')
# no dendogram nor reordering for rows or columns
heatmap(d,Colv=NA,Rowv = NA,scale='column')
# coloring by color pallete
heatmap(d,Colv = NA,Rowv = NA,scale='column',col=cm.colors(256))
heatmap(d,Colv = NA,Rowv = NA,scale='column',main='heatmap mtcars',xlab='variable',ylab='car')
###
View(trees)
# visualize trees dataset in heatmap
