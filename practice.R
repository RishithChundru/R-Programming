# leap year or not logic

# year<-as.numeric(readline("Enter a year : "))
# if((year%%4==0 && year%%100!=0)||year%%400==0){
#   cat(year," is a leap year")
# }else{
#   cat(year," is not a leap year")
# }


#pyramid

n <- 5
for (i in 1:n) {
  cat(rep(" ", n-i), rep("*", 2*i-1), "\n")
}

n<-as.integer(readline("Enter a number: "))
for(i in 1:n){
  cat(rep(" ",n-i),rep("*",2*i-1),"\n")
}

#right triangle

n <- 5
for (i in 1:n) {
 cat(rep("*", i), "\n")
}


# n
# n<-rep(c(1,2,3),times=3)
# n
# n<-rep(c(1,2,3),each=3)
# n<-rep(c(1,2,3),times=c(1,2,3))

# matrix <- matrix(1:9,nrow = 3,ncol=3,byrow=TRUE)
# 
# for (i in 1:nrow(matrix)) {
#   for (j in 1:ncol(matrix)) {
#     print(matrix[i, j])
#   }
# }

# vec <- c(3, 7, 10, 15, 20)
# 
# for (num in vec) {
#   if (num %% 2 == 0) {
#     print(paste(num, "is even"))
#   } else {
#     print(paste(num, "is odd"))
#   }
# }



# size <- 5

# for (i in 1:size) {
#   for (j in 1:size) {
#     cat(j, " ")
#   }
#   cat("\n")
# }


# rows <- 5
# 
# for (i in 1:rows) {
#   for (j in 1:(rows - i)) {
#     cat(" ")
#   }
#   for (k in 1:(2*i - 1)) {
#     cat(k, " ")
#   }
#   cat("\n")
# }


# rows <- 5
# 
# for (i in 1:(2*rows-1)) {
#   if (i <= rows) {
#     for (j in 1:(rows - i)) {
#       cat(" ")
#     }
#     for (k in 1:(2*i - 1)) {
#       cat("*")
#     }
#   } else {
#     for (j in 1:(i - rows)) {
#       cat(" ")
#     }
#     for (k in 1:(2*(2*rows - i) - 1)) {
#       cat("*")
#     }
#   }
#   cat("\n")
# }

starsrev = c() 
i=1 
j=5 
 
while(i<=5){ 
  for(j in 1:j){ 
    starsrev = c(starsrev, "*") 
  } 
  
  print(starsrev) 
 
  starsrev = c() 
  i=i+1 
  j=j-1 
  }


printDiamond <- function(n) {
  # Upper half of the diamond
 for (i in 1:n) {
     cat(paste(rep(" ", n - i), collapse = ""))
     cat(paste(rep("*", 2 * i - 1), collapse = ""))
     cat("\n")
   }
   
   # Lower half of the diamond
   for (i in (n - 1):1) {
     cat(paste(rep(" ", n - i), collapse = ""))
     cat(paste(rep("*", 2 * i - 1), collapse = ""))
     cat("\n")
   }
 }
# 
# # Example usage
 printDiamond(5)

 printdiamond <- function(n) {
   for(i in 1:n) {
     cat(paste(rep(" ", n-i), collapse=""))
     cat(paste(rep("*", 2*i-1), collapse=""))
     cat("\n")
   }
   for(i in (n-1):1) {
     cat(paste(rep(" ", n-i), collapse=""))
     cat(paste(rep("*", 2*i-1), collapse="")) 
     cat("\n")
   }
 }
 printdiamond(5)
 
 
library(readxl)
a<-read_excel(file.choose())
a
View(a)
max(a$Sales)
a<-iris
View(a)
max(a$Sepal.Length)
a<-ToothGrowth
View(a)
View(mtcars)
View(PlantGrowth)
View(USArrests)
?mtcars
require(graphics)
pairs(mtcars, main = "mtcars data", gap = 1/4)
coplot(mpg ~ disp | as.factor(cyl), data = mtcars,
       panel = panel.smooth, rows = 1)
## possibly more meaningful, e.g., for summary() or bivariate plots:
mtcars2 <- within(mtcars, {
  vs <- factor(vs, labels = c("V", "S"))
  am <- factor(am, labels = c("automatic", "manual"))
  cyl  <- ordered(cyl)
  gear <- ordered(gear)
  carb <- ordered(carb)
})
?iris
?PlantGrowth
dim(a)
names(a)
summary(a)
str(a)
nrow(a)
ncol(a)


library(sqldf)
a<-read.csv(file.choose())
View(a)
View(sqldf('select * from a'))
View(sqldf('select name from a'))
View(sqldf('select max(roll_no) from a'))
View(sqldf('select distinct name from a'))
View(sqldf('select marks from a where marks>=30'))
View(sqldf("select * from a where name=='Veer'"))     
View(sqldf("select * from a order by roll_no desc"))
a<-iris$Petal.Length
View(a)
View(sqldf("select distinct Species from a"))
View(sqldf("select * from a order by Petal.Length"))
colnames(a)
b<-mtcars
View(b)
View(sqldf('select * from b order by cyl desc'))
View(sqldf('select sum(cyl) as sum from b'))


a<-as.Date(c("2024-12-3","2024-11-1"))
a
a+5
data<-iris
data
arrange(iris,Petal.Width)


a<-array(c(1:18),dim=c(4,4,5))
a
a[,,1]
