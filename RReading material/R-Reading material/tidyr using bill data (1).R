# TIDYR IN R : used to create tidy data
#https://youtu.be/0S-gF0jDwqU
# Install package
install.packages("tidyr", dep=T)

# load package
library(tidyr)

# Import file
data <- read.csv(file.choose())
View(data)

#The commom verbs are 

# gather()  - Reshaping wide format to long format 
# syntax : gather(data,key,value,...)
?gather
datapivot <- gather(data,Bill_type,Bill_Amt,
                    gasbill:waterbill)

View(datapivot)
# spread()  - Reshaping long format to wide format 
# syntax : spread(data,key,value)
dataspread <- spread(datapivot, Bill_type,Bill_Amt)
View(dataspread)
head(data)
# separate()  - Split one column into multiple columns 
# syntax : separate(data,col,into,sep)
datasep <- separate(data,Date,c("Day","Month","Year"),
                    sep="-")
head(datasep)
# unite() - to merge columns
# syntax : unite(data,col,cols to merge,sep)
dataunite <- unite(datasep, Date, c("Day","Month","Year"),
                   sep="/")
head(dataunite)
datauni <- unite(data,"Place",c(city,state), sep=", ")
head(datauni)
# Replace NAs in a data frame using tidyr package
library(tidyr)
df <- data.frame(x = c(1, 2, NA), y = c("a", NA, "b"))
df %>% replace_na(list(x = 0, y = "unknown"))
#OR
replace_na(df,list(x = 0, y = "unknown"))

drop_na(df)
#OR
df%>% drop_na
