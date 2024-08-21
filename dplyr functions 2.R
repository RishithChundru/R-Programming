d1<-read.csv(file.choose())
View(d1)
library(dplyr)
str(d1)
summary(d1)
a<-select(d1,contains("ti"))
a
# display varriable start by p
select(d1,starts_with("p"))
select(d1,ends_with("n"))
# all variables except  latitude, longitude and pincode
select(d1,-starts_with("la"),-starts_with("lo"),-starts_with("p"))
# display unique tuples
nrow(distinct(d1))
# find records age>25 and people are self employeed
filter(d1,Age>25)
# find records age between 10 and 30 and people are self employeed
between(Age,10,30)
# find females whose income is 0 
nrow(filter(d1,Monthly.Income=="No Income",Gender=="Female"))
filter(d1,Monthly.Income=="No Income",Gender=="Female")
# find pincode of male and females whose income is 0 and arrange in asc.
# pipe operator-%>%
# find age,gender,occupation,familysize_sort according to familysize and display first six records
d1%>%
  select(Age,Occupation,Family.size)%>%
  arrange(Family.size)%>%  
  head(100)  
# find the pincode of single people and display data as per the
# highest age and find how many singles are self employeed.
