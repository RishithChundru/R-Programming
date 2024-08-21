#function
#userdefined and inbuilt function
#syntax-function_name=function(arg1,arg2,...........argn)
{
 # body statements
}
#callingfunction: functionname()
f1<-function(){
  cat('hello r programming')
}
f1() #calling function 
# function with arguments
f2<-function(a,b=9){
  res<-a+b
  cat(res)
}
f2(2,3) #positional arguments
f2(b=5,a=3) #keyword arguments
f2(3,) #default arguments
f2(3)
#nested function
#function inside function
#calling function inside other function
outer=function(){
  inner=function(){
    cat('hello user')
  }
  inner()
}
outer()
#calling inside another function
a_rec=function(l,b){
  res<-l*b
   return(res)
}
cat('area of rectangle',a_rec(5,2), outer())

#find the square of 1 to 10 by function
sqr<-function(b){
  for(a in 1:b){
    cat(a*a," ")
  }
}
sqr(10)

#inbuilt string function
#find the length of string
nchar('programming')
#join two strings together
m1='hello'
m2='students'
paste(m1,m2)
cat(m1,m2)
#case of string
toupper(m1)
tolower(m2)

#multiline string
a<-'hello students
    hello users
    hello programmers'
a
cat(a)

#substr(string_name,start,stop)
str<-'welcome to R programming'
s<-c('Java','C','C++','Python')
substr(str,1,9)
substr(s,3,5)
substr(s,1,3)

#grep(pattern,string)
grep('th',s)
grep('pro',str)
#sub(substring,replacement,input_string)
sub('R','java',str)
# paste(substring,string,sep='delimiter)
paste('hi! ',str,sep='& ')
#split strings
#strsplit(string,str_split)
strsplit(str,'o')
strsplit(s,'o')
a<-'R is a language and environment.
it is a gnu project'
cat(a)
a
nchar(a)
