#Drawing a line chart in R with the plot function
#A line chart can be created in base R with the plot function. 
#Consider that you have the data displayed on the table below:
x<-c(1,2,3,4,5)
y<-c(200,400,600,700,500)
plot(x, y, type = "l")
#The style of the line graphs in R can be customized 
#with the arguments of the function. As an example, 
#the color and line width can be modified using the col and 
#lwd arguments, respectively.
plot(x, y, type = "l",
     col = "lightblue", # Color
     lwd = 5)           # Line width

plot(x, y, type = "s", main = 'type = "s"')
plot(x, y, type = "b", main = 'type = "b"')
plot(x, y, type = "o", main = 'type = "o"')
#Furthermore, there exist six different types of lines, 
#that can be specified making use of the lty argument,from 1 to 6:
plot(x, y, type = "l", lwd = 2, lty = 1, main = "lty = 1")
plot(x, y, type = "l", lwd = 2, lty = 2, main = "lty = 2")
plot(x, y, type = "l", lwd = 2, lty = 3, main = "lty = 3")
plot(x, y, type = "l", lwd = 2, lty = 4, main = "lty = 4")
plot(x, y, type = "l", lwd = 2, lty = 5, main = "lty = 5")
plot(x, y, type = "l", lwd = 2, lty = 6, main = "lty = 6")
plot(x, y, type = "b", cex = 2, pch = 3, col = "red") 
plot(x, y, type = "b",
     pch = LETTERS[1:5], # Letters as symbols
     cex = 2,            # Size of the symbols
     col = 1:5,          # pch colors
     xlim = c(0, 6),     # X-axis limits
     ylim = c(150, 750))
#Pch= instruction refers to the plotting character 
#and can be specified in one of several ways

