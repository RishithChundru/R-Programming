#dplyr function is used for data manipulation
#It provides a set of functions that make data manipulation tasks easier
#Some of the key functions provided by dplyr include:
#filter(): Selects rows from a data frame based on specified conditions.
#select(): Selects columns from a data frame based on column names or indices.
#mutate(): Adds new variables or modifies existing variables in a data frame.
#arrange(): Sorts rows of a data frame based on specified column(s).
#summarise()/summarize(): Computes summary statistics for variables.
#group_by(): Groups the data frame by one or more variables, enabling operations to be performed within each group.
#rename(): Renames variables in a data frame.
#distinct(): Returns unique rows from a data frame.
#Pipes (%>%):The pipe operator (%>%) in dplyr package, which allows us to chain multiple operations together, improving code readability. 
#****************************************************************************************************************************************************************
#1 select()
#e.g. 1
d <- data.frame( name = c("Abhi", "Bhavesh", "Chaman", "Dimri"), 
                 age = c(7, 5, 9, 16), 
                 ht = c(46, NA, NA, 69),
                 school = c("yes", "yes", "no", "no") )
d
names(d)
sel<-select(d, name, school)
sel
#e.g.2 to select all the columns except a specific column
sel1<-select(d, -ht)
sel1
#e.g.3.1 to select a range of columns by name : (colon) operator is used
sel2<-select(d, name:ht)
sel2
#e,g.3.2 Printing column 1 to 2
sell<-select(d, 1: 3)
sell
#e.g.4 to select all columns that start with the character string "na"
# use function starts_with
sel3<-select(d, starts_with("ht"))
sel3
#e.g.5 -startswith() function to print
# everything except ht data
sel4<-select(d, -starts_with("ht"))
sel4
#e.g.6 to select all columns that ends with the character string "ge"
# use function ends_with
sel5<-select(d, ends_with("ge"))
sel5
#e.g.7 to select all columns that contains the character string "ge"
# use function contains()
sel6<-select(d, contains("a"))
sel6
#**********************************************************************************************************
#2 filter()
#e.g.1 to select the rows having age>7
fil<-filter(d,age>7)
fil
#e.g.2 to select the rows having age>7 and ht<50
fil1<-filter(d,age>7, ht>50)
fil1
#e.g 2 Finding rows with NA value
fil2<-filter(d,is.na(ht))
fil2
#e.g 3 Finding rows with no NA value
fil3<-filter(d,!is.na(ht))
fil3
#*************************************************************************************
#3 arrange()
#e.g.1 Arranging name according to the age
name<-arrange(d,age)
name
#e.g 2
name1<- arrange(d, desc(age))
name1
#**************************************************************************
#4 mutate() and transmutate()
#e.g 1 # Calculating a variable add which is sum of height
# and age printing with ht and age
mt<-mutate(d, add = ht + age) 
mt
#e.g 2  Calculating a variable add which is sum of height 
# and age printing without ht and age
mt1<-transmute(d, add = ht + age) 
mt1
#**********************************************************************************************
#5
#e.g1 # Calculating mean of age
s<-summarise(d, mean = mean(age))
s
# Calculating min of age
s1<-summarise(d, med = min(age))
s1
# Calculating max of age
s2<-summarise(d, med = max(age))
s2
# Calculating median of age
s3<-summarise(d, med = median(age))
s3
#*******************************************************
#6 rename()
#e.g1 rename ht with height
re<-rename(d, height = ht)
re

