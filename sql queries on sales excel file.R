## 1
getwd()
setwd()
## 2
# file.choose()
?dplyr
s3<-read.csv(file.choose())
library('readxl')
library(sqldf)
install.packages('xlsx')
library('sqldf')
s3<-read_excel(file.choose())
View(s3)
#1
sqldf('select sum(sales) from s3')
View(sqldf('select sum(sales) from s3'))
#2
View(sqldf("select country from s3 where sales=(select MIN(sales) from s3)"))
#3
View(sqldf("select country,sales from s3 where Region =='North'"))
#4
View(sqldf("select * from s3 where sales=(select Max(sales) from s3)"))
#5
View(sqldf("SELECT COUNT(DISTINCT country) AS total_countries FROM s3"))
#6 
View(sqldf("SELECT * FROM s3 WHERE Region = 'East' AND Sales > 500"))
#7
View(sqldf("SELECT Country, Region, Sales FROM s3 WHERE Region IN (SELECT Region FROM s3 GROUP BY Region HAVING AVG(Sales) < 800) ORDER BY Sales"))
#8
View(sqldf("SELECT DISTINCT Country, Region FROM s3 WHERE Region IN ('North', 'West')"))
#9
View(sqldf("SELECT DISTINCT Country FROM s3 WHERE Country NOT IN (SELECT Country FROM s3 WHERE Region IN ('North', 'South'))"))
#10
d1 <- sqldf("SELECT * FROM s3 WHERE Country LIKE 'U%'")
d2 <- sqldf("SELECT * FROM s3 WHERE Country LIKE '%K'")
d1
d2
#11
sqldf("SELECT Country FROM (SELECT Country FROM d1 UNION SELECT Country FROM d2) AS countries_d1_d2")
#12
no_sales <- sqldf("SELECT * FROM s3 WHERE Country NOT IN (SELECT Country FROM (SELECT Country FROM d1 UNION SELECT Country FROM d2) AS countries_d1_d2)")
no_sales
#13
View(sqldf("SELECT COUNT(*) AS TotalObservations, COUNT(DISTINCT Country) AS Dimensions FROM no_sales"))
