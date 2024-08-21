#mathematical functions
x<--4
abs(x)
x<-0.4
abs(x)
sqrt(-4)
sqrt(4)
y<-4.2
ceiling(y)
floor(y)
#***********************************************************
trunc(5.19)
trunc(5.5)
#***********************************************************
round(3.568,digit=1)
round(3.4567,digit=2)
round(3.44,digit=1)

round(3.568,digit=1)
round(3.450,digit=1)
round(3.4575,digit=3)
round(3.471,digit=1)
round(3.471,digit=2)
round(3.471,digit=3)
round(3.47109,digit=3)
round(3.4719,digit=3)
#***********************************************************
x<-4
log(x)
log10(x)
exp(x)
#****************************************************************************
#substr: Extract or replaces sub strings in a string
substr("abcdef",2,4)
#********************************************************************
#nchar-no. of character in a string
x<-"big data"
nchar(x)
#*******************************************************************
#grep()-(global regular expression print)
#function in R Language is used to search for matches of a pattern within each element of the given string.
#Syntax:grep(pattern, x, ignore.case=TRUE/FALSE, value=TRUE/FALSE)
#Parameters:pattern:Specified pattern which is going to be matched with given elements of 
#the string.
#x:Specified string vector.
#ignore.case:If its value is TRUE, it ignores case.
#value:If its value is TRUE, it return the matching elements vector,
#else return the indices vector.
x <- c("GFG", "gfg", "xyz", "XYZ")
grep("gfg",x,value=T)
grep("xyz",x)
grep("gfg",x,ignore.case = FALSE)
grep("gfg",x,ignore.case = TRUE)

grep("b*", c("ab+", "bda2", "+ccaa", "ad"),value=TRUE)
grep("b*", c("ab+", "bda2", "+ccaa", "ad"),value=F)

grep("b+", c("ab+", "bda2", "+ccaa", "ad"),value=F)
grep("b+", c("ab+", "bda2", "+ccaa", "ad"),value=T)

#*******************************************************************
#sub() Function-Replace the First Match of a Pattern from a String 
#Syntax: sub(pattern, replacement, string, ignore.case=TRUE/FALSE)
#Parameters:
#pattern: string to be matched
#replacement: string for replacement
#string: String or String vector
#ignore.case: Boolean value for case-sensitive replacement
x="Hello world hello"
sub("ell","how",x)
sub("ELL","how",x,ignore.case = TRUE)
sub("hel","owe",x,ignore.case=FALSE)
sub("hel","owe",x,ignore.case=TRUE)

#*****************************************
#strsplit()
#Syntax: strsplit(string, split, fixed)
#Parameters:
#string: Input vector or string.
#split: It is a character of string to being split.
#fixed: Match the split or use the regular expression.
strsplit("xyz","")
strsplit("xyz",' ')
strsplit("xyz",'-')
strsplit("hello world","")
x<-"hello world"
strsplit(x," ")

#strsplit() function with Regular Expression delimiter
x<-"hello2world9"
res<-strsplit(x,split = "[0-9]+")
print(res)

#Splitting the dates using strsplit() function in R
string_date<-c("2-07-2020","5-07-2020","6-07-2020",
               "7-07-2020","8-07-2020")
result<-strsplit(string_date,split = "-")
print(result)
#**************************************************************************
st1<- "shuBHAm"
print(tolower(st1))
st1<- "shuBHAm"
print(toupper(st1))

