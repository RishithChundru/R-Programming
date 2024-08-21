library(tm)
library(wordcloud)
library(SnowballC)
w<-"Hi my name is Rishith? what is Rishith sai   my name is rishith ia am i
    in phagwara phagwar jug us is among Rishith ioa     ?@ jis this ia t
    thrn text"
w
w1<-Corpus(VectorSource(w))
w1
stopwords("English")
w1<-tm_map(w1,tolower)
w1<-tm_map(w1,removeNumbers)
w1<-tm_map(w1,removeWords,stopwords("English"))
w1<-tm_map(w1,removePunctuation)
w1<-tm_map(w1,stripWhitespace)
w1<-tm_map(w1,stemDocument)
w1<-Corpus(VectorSource(w))
w1
w1<-TermDocumentMatrix(w1)
w1<-as.matrix(w1)
w1
w1<-sort(rowSums(w1),decreasing = TRUE)
w1
df<-data.frame(words=names(w1),freq=w1)
df
wordcloud(df$words,df$freq,min.freq=1,max.words=500,rot.per=0.40,random.order=FALSE,color='red')
