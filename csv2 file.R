#find the total observations of prostate cancer dataset
#number of rows
#number of columns
#find minimum radius 
#average value of area
#extract id 18,22,56,45 and display symmetry,compactness,fractional_dimension
#find dimension of given dataset
#add the area and perimeter
#add the area and perimeter and generate new column i.e new_dimension
#find the area below than 600
#find the total number of diagonsis_result of M.
#find the range of smoothness
#find the compactness and symmetry below than 0.158.
#extract last 17 ids.
getwd()
setwd('C:/Users/rishi/OneDrive/Desktop')
r1<-read.csv(file.choose())
r1
View(r1)
nrow(r1)
ncol(r1)
str(r1)
summary(r1)
names(r1)
dim(r1)
rr<-head(r1)
rr
rr<-head(r1,10)
rr
rr<-tail(r1,10)
rr
rr<-tail(r1)
rr
min(r1$radius)
mean(r1$area)
r1[c(18,22,56,45),c(7,8,9)]
dim(r1)
r1$new_dimension=r1$area+r1$perimeter
r1$new_dimension
a<-r1$area<600
a<-sum(r1$diagnosis_result=='M')
a
range(r1$smoothness)
a<-r1$compactness<0.158&r1$smoothness<0.158
a
tail(r1,17)
