#factor are used to categorize the data
#it is created by factor()
student<-factor(c('B','A','D','B','C','A','B'),levels = c('A','B','C','D','E'),labels = c('Star','Average','Below Average','Poor','Unsatisfactory'))
student
a<-factor(c('a','b','c','d','e','a'),levels=c('a','b','c','d','e'),labels=c('vgood','good','above avg','avg','below avg'))
a
is.factor(student)#it checks whether it is factor or not
dir<-factor(c('north','west','east','north','east'),levels=c('east','west','north','south'))
dir
dir[6]<-"south"
dir
levels(dir)
dir<-factor(c('north','west','east','north','east'))
dir
levels(dir)# to know number of levels are there in that factor
 
# Accessing
student[2]
student[3:5]
 
# Update
student[3]<-'E'
student
dir[1]<-'south'
dir
university<-factor(c('lpu','chitkara','thappar','chitkara','lpu','chitkara','chitkara','lpu','lpu','thappar','chitkara','thappar'),levels = c('chitkara','lpu','thappar','oxford'),labels = c('c','l','t','o'))
university
university[2]<-'lpu'
university
university[c(3,10,12)]<-'oxford'
university

# levels can be created by gl()
# gl() Accept 3 arguments: n,k,labels
# where n is number of levels
# k is replication number
# labels represents resulting vector
a<-gl(4,3,labels=c('btech','mtech','mba','phd'))
a
length(dir)
length(a)
