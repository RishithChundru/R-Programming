#string functions
str="Hello all"
#substring
print(substr(str,1,5))   #print(substr(str,start,end))
str2="Come to my room"
print(substr(str2,1,4))

#find no.of characters in the string
str3<-"This is me"
print(nchar(str3))
str4<-"Students complete your task as soon as possible"
print(nchar(str4))
print(substr(str4,27,37))

#grep() : used to match the pattern from the given string
x<-c("GFG","gfg","xyz","XYZ")
grep("gfg",x)
grep("GFG",x)
grep("xyz",x,ignore.case=FALSE)   #it is case-sensitive
grep("XYZ",x,ignore.case=TRUE)    #it is non case-sensitive
grep("gfg",x,value=TRUE)      #value=T means we want value so it will give value only and not index
grep("gfg",x,value=FALSE)      #value=F means we don't value so it will give the index and not the value

y<-"Welcome to LPU"
grep("to",y)   # it will give only 1 as index as it is a single string whereas the above one is the vector so it will give different index for different string

z<-c("ABC","abc","DEF","def")
grep("DEF",z)
grep("DEF",z,ignore.case=TRUE)
grep("abc",z,ignore.case=FALSE)
grep("abc",z,ignore.case=TRUE)
grep("ABC",z,value=T)
grep("ABC",z,value=F)

#minimum occurence of string
grep("b+",c("ab+","bda2","+ccaa","ad"),value=TRUE)  #returns strings where b is there  
#0 or maximum occurence of string
grep("b*",c("ab+","bda2","+ccaa","ad"),value=TRUE)  #returns value of strings with 0 or maximum occurence of  matched string
grep("b*",c("ab+","bda2","+ccaa","ad"),value=F)   #returns positions of the matched strings
grep("bb",c("aabb","abba","aac"))
#replace a string with another string in the first occurence
x1<-"R-Programming"
print(sub("R","C",x1))
sub("R","C",x1)
#replace "r" with "c"
print(sub("r","c",x1))
#replace "n" with "M"
print(sub("n","M",x1))

x2<-"Hello world HELLO"
sub("ell","how",x2,ignore.case=TRUE)
sub("HELL","hai",x2,ignore.case=FALSE)
sub("HELL","hai",x2,ignore.case=TRUE)

#strsplit()
x3<-"Hello everyone"
print(strsplit(x3,"o"))  #wherever the character encounters the string will get splitted there and the rest will become another string and that charcater will not be there in any string
print(strsplit(x3,"ll"))

string_date<-c("2-07-2020","5-05-2020","2-06-2020")
print(strsplit(string_date,"-"))
print(strsplit(string_date,"0"))

x4<-"Hello2World"
res<-strsplit(x4,split="[0-9]+")   #wherever the numbers from 0-9 occurs then the string will get splitted
print(res)

#tolower()
#toupper()
x5<-"AbCdEfG"
x5<-tolower(x5)
print(x5)
x5<-toupper(x5)
print(x5)
