#text mining:is the process of deriving meaningful info 
#from NLP
#millions of data is produced and out of all, 
#21% data is structured,rest is unstructured data
#how to analyse your data correctly
#only way to add value to your business is to extract 
#meaning information from all the data we have
#where it is used:
#auto complete,spam detection,predicting typing,spell checker
#NLP is a part of computer science and AI which deals with
#human language
#steps:
#Importing data->create a corpus(structured data set(collection of doc))
#->pre-processing(remove tags,
#stop words(common used words),punctuation,numbers,white spaces,stemming)->
#create Document term matrix(frequency of word occurring in doc 
#->text analysis(Word frequency correlation)->
#text visualization(word cloud,histo)
install.packages('tm')  # for text mining
install.packages("SnowballC") # for text stemming
install.packages("wordcloud") # way of representing graphically
library(tm)
library("SnowballC") 
library("wordcloud") 
library("RColorBrewer") 
txt<-read.csv(file.choose(),header=TRUE)
corp<-iconv(txt$sentence) 
#____________________________
#corpus is a list of documents
#VectorSource creates a corpus of character vector
corp<-Corpus(VectorSource(corp)) 
inspect(corp[1:5])

#start pre processing
#text cleaning (convert to lowercase)
#content_transformer creates content transformer, 
#i.e. functions which modify the content of an R object 
corp<-tm_map(corp,content_transformer(tolower))
inspect(corp[1:5])
#remove numbers
corp<-tm_map(corp,removeNumbers)
inspect(corp[1:5])
#remove stop words(common English words)
corp<-tm_map(corp,removeWords,stopwords("english"))
inspect(corp[1:5])
#remove punctuation
corp<-tm_map(corp,removePunctuation)
inspect(corp[1:5])
#remove extra white spaces
corp<-tm_map(corp,stripWhitespace)
inspect(corp[1:5])
#stemming text
corp<-tm_map(corp,stemDocument)
inspect(corp[1:5])
#remove additional stop words
#stopwords("english")
corp<-tm_map(corp,removeWords,c("get","told","took","gave","can"))
inspect(corp[1:5])
#create TDM
# TDM: table containing frequency of words
corp<-TermDocumentMatrix(corp)
corp
corp<-as.matrix(corp)
corp
srt<-sort(rowSums(corp))# ascending order
srt
St<-sort(rowSums(corp), decreasing = TRUE) #descending order
d<-data.frame(word=names(srt),freq=srt)
View(d)
wordcloud(d$word,d$freq,random.order=FALSE,
          rot.per=0.6,scale=c(4,.5),min.freq = 1,  
          max.words=200,
           colors=brewer.pal(5,"Dark2"))

