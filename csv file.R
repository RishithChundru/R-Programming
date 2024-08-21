# csv file(comma separated value)
getwd()
setwd('C:/Users/rishi/OneDrive/Desktop')
r1<-read.csv(file.choose())
r1
View(r1)
nrow(r1)
ncol(r1)
str(r1)
summary(r1)#statistics on all columns
names(r1)# get all variables/column names
dim(r1)# check dimensions
rr<-head(r1)#first 6 rows
View(rr)
rr<-head(r1,10)
rr
rr<-tail(r1)#last 6 rows
rr
rr<-tail(r1,20)
rr
View(r1)
rr1<-r1[c(1:6),(1:3)]# retrieve 6 rows and 3 columns
rr1
#retrieve skinthickness, insulin and bmi of 11 to 15 patients
rr1<-r1[c(11:15),c(4:6)]
rr1
# find maximum bloodpressure
max(r1$BloodPressure)
#find range of blood pressure
range(r1$BloodPressure)
#find mean
mean(r1$BloodPressure)
#find minimum
min(r1$BloodPressure)
#find the complete record of max age patient.
r11<-subset(r1,Age==max(Age))
r11
#find the record of patient below age 10
r11<-subset(r1,Age<25&Insulin<50)
r11
grep('Age',colnames(r1))#for the position of column
grep('Insulin',colnames(r1))
max(r1$Glucose)
