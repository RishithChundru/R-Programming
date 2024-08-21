install.packages('xlsx')
library('sqldf')
s1<-read.csv(file.choose())
View(s1)
View(sqldf('select * from s1'))
View(sqldf('select count(*) from s1'))
View(sqldf('select * from s1 where marks>80'))
View(sqldf('select * from s1 where marks<80'))
View(sqldf('select * from s1 order by marks desc'))
View(sqldf('select * from s1 where name like "v%"'))
# find the distinct records
# find the first 3 records
View(sqldf('select distinct name from s1'))
View(sqldf('select distinct name from s1 limit 3'))
View(sqldf('select distinct * from s1 limit 3'))
#find the record of student whose name is vikas
View(sqldf("select * from s1 where name=='Vikas'"))
View(sqldf("select * from s1 where name like'v%s'"))
#find average marks
#find maximum marks with name
#find total marks of all students with name
View(sqldf("select avg(marks) from s1"))
View(sqldf("select max(marks) from s1"))
View(sqldf("select sum(marks) from s1"))
#alias
View(sqldf("select name as n from s1"))
View(sqldf("select * from s1 where name=='Vikas' and marks>50"))
.#find detail marks above 80 and below 50.create two datasets d1,d2