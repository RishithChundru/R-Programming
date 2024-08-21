# 1
{
n<-as.integer(readline("Enter a n: "))
if(n>=1 && n<=10){
  print("print the bill")
}else{
  print("invalid input")
}
}

# 2

{
length<-as.integer(readline("Enter length : "))
if(length>=15 && length<=25){
  breadth<-as.integer(readline("Enter breadth: "))
  if(breadth>=10 && breadth<=20){
    height<-as.integer(readline("Enter height: "))
  }
}
  volume=length*breadth*height
  volume
}

# 3
library(dplyr)
dataset<-CO2
CO2
View(dataset)
summarize(dataset,min(conc))
summarize(dataset,max(conc))
summarize(dataset,min(uptake))
summarize(dataset,max(uptake))
summarize(dataset,contains('Qn'))
select(dataset,contains(conc>100))
          