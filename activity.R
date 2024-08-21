library('readxl')
library(sqldf)
install.packages('xlsx')
s<-read.csv(file.choose())
View(s)
# 1
s$marks[s$roll_no %in% c(1, 4)] <- NA
View(s)
# 2
s <- rbind(s, data.frame(name = NA, roll_no = 6, marks = NA))
View(s)
# 3
sum(is.na(s))
colSums(is.na(s))
# 4
missing_name<-which(is.na(s$name))
missing_marks=which(is.na(s$marks))
View(s)
# 5
na_values <- sum(is.na(s))
cat("Total count of NA values:", na_values, "\n")
