d1<-read.csv(file.choose())
d1
View(d1)
str(d1)
nrow(d1)
ncol(d1)
head(d1)
View(head(d1))
tail(d1)
View(tail(d1))
View(head(d1,10))
View(tail(d1,10))
library(dplyr)
sample_n(d1,10)
sample_frac(d1,.20)
 
# remove duplicate rows based on all variables
View(distinct(d1))

# retriving few variables
d2<-select(d1,Age,Occupation,Gender)
d2
View(head(d2,10))

# display all columns except gender in d2
View(select(d2,-Gender))

# display the variables start with "G"
select(d2,starts_with("G"))

#find variables which contains 'oc'
select(d2,contains("oc"))
select(d1,contains("si"))

# conditional selection
View(filter(d1,Age>20))
a3<-tail(filter(d1,Age>20),10)
a3

# multiple conditions
a4<-filter(d1,Age>20,Family.size>4)
a4
View(a4)

# sort a4 according to the age
head(arrange(a4,Age))

# display the age whose marital status is married
# and educational qualification is postgraduate
a1<-filter(d1,Marital.Status="Married",Educational.Qualifications="Post Graduate")

