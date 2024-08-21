#heatmap in R
#one can build in base R,using the heapmap() function with(
#no parameters
#Note it takes as input a matrix
#if you have a data frame,you can convert it to a matrix
#with as.matrix(),but you need numeric value only
#each column is a variable
#each observation is a row
#Each square is a value
data<-as.matrix(mtcars)
heatmap(data)
#not very insight representation,
#left side is structure called dendrogram
#-----------------------------------------------
#Normalizing the matrix is done using the scale argument
#of the heatmap()function()
heatmap(data,scale="column")
#--------------------------------------------
heatmap(data,Colv=NA,Rowv=NA,scale="column")
#No dendrogram nor reordering for neither column or row()
#--------------------------------------------------
heatmap(data,Colv=NA,Rowv=NA,scale="column",
        col=cm.colors(256),xlab="variable",ylab="car")
#cm.color=inbuilt color palette
#------------------------------------------
ds<-data.frame(rnorm(10,5,1),rnorm(10,5,1),rnorm(10,5,1))
rn=c("A","B","C","D","E")
cn=c("F","G","H","I")
x<-as.matrix(ds)
heatmap(x,labRow = rn,labCol = cn,main="Test Heat map")
