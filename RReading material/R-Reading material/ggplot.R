#ggplot
#grammar of graphics
#graphics=distinct layers of grammatical elements
#meaningful plots through aesthetic mappings
#COMPONENTS OF GRAMMAR OF GRAPHICS                      #
#1. DATA        :   the dataset                         #
#2. AESTHETICS  :   the metric onto which we plot data  #
#3. GEOMETRY    :   visual elements to plot the data    #
#4. FACET       :   groups by which we divide the data 
#5. Stastics:Representations of our data to aid understanding
#6. Coordinates:The space on which data will be plotted
#7. Themes:all non data link
#we are considering dataset iris
install.packages("ggplot2")
library(ggplot2)
View(iris)
ggplot(data=iris)#screen will be there but no output
#so add next layer after data layer aesthetics, includes axis
ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))
#geometries=which type of plot you need, bargraph,scatter,line etc
p<-ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))
p+geom_point()
#facet layer is not mandatory all other pending layers are not mand
ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))+
              geom_point()+facet_wrap(~Species)
#statistics layer allows you to plot statistical values
#Claculated from the data
ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))+
  geom_point()+facet_wrap(~Species)+geom_smooth(method="lm")
#cordinate layer:allows you to adjust x and y axis
library(dplyr)
ggplot(filter(iris,Species=="setosa"),
       aes(x=Sepal.Length,y=Sepal.Width))+
  geom_point()+
  coord_cartesian(xlim=c(4,8),ylim=c(2,5))
#theme
ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))+
  geom_point()+facet_wrap(~Species)+geom_smooth(method="lm")+
  theme(axis.text=element_text(color = "green",size=14))

#________________________________
#***   SCATTERPLOTS    ***#
ggplot(data=iris, aes(y=Petal.Length, 
                      x=Sepal.Length))+geom_point()
ggplot(data=iris, aes(y=Petal.Length, 
                      x=Sepal.Length,col=Species))+geom_point()
ggplot(data=iris, aes(y=Petal.Length, x=Sepal.Length,
                      shape=Species))+geom_point()
ggplot(data=iris, aes(y=Petal.Length, x=Sepal.Length, col=Species, 
                      shape=Species))+geom_point()
#-------------------------------------------------------------
library(ggplot2)
house<-read.csv(file.choose(),header = TRUE)
View(house)
ggplot(data=house, aes(x=waterfront))+geom_bar()
ggplot(data=house, aes(x=waterfront,
                       fill=air_cond))+geom_bar()
ggplot(data=house, aes(x=waterfront,
                       fill=air_cond))+geom_bar(position = "fill")
ggplot(data=house, aes(x=waterfront,
                       fill=sewer))+geom_bar(position="fill")
