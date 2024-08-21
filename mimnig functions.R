# text mimnig functions
# world cloid map
library(tm) # highlight the most frequently words in file
library(wordcloud)#analyse the keyword and visualize
library(RColorBrewer)# make worldcloud in multiple colors
library(SnowballC)# text stemming
w<-readLines(file.choose())
w

# step1: corpus:change the plain text into corpus and tm package can produce
# only corpus data. corpus is collection of documents that is enlarged and structured format
# vector source: processing the data in the character variable
w1<-Corpus(VectorSource(w))
w1
inspect(w1[1:5])

# step2: text cleaning t1_map
# remove whitespaces, numbers punctuations, stop words.
stopwords("english")
w1<-tm_map(w1,tolower)
w1<-tm_map(w1,removeNumbers)
w1<-tm_map(w1,removePunctuation)
w1<-tm_map(w1,removeWords,stopwords("english"))
w1<-tm_map(w1,stripWhitespace)

#step3: text transformation(special characters are replaced by space)
# tospace<-content_transformer(function(x,pattern)gsub(pattern,' ',x))
# w1<-tm_map(w1,tospace,'@')
# w1<-tm_map(w1,tospace,',')
# w1<-tm_map(w1,tospace,'?')
# w1<-tm_map(w1,tospace,'_')
# w1<-tm_map(w1,tospace,'/')

# step 4: text stemming stem the words like moving, moved...
w1<-tm_map(w1,stemDocument)

# step 5: document matrix: find the frequency of words
w1<-Corpus(VectorSource(w))
w1
w1<-TermDocumentMatrix(w1)
w1
w1<-as.matrix(w1)
w1
w1<-sort(rowSums(w1),decreasing=TRUE)
w1

d<-data.frame(word=names(w1),freq=w1)
d

#wordcloud
wordcloud(words=d$word,freq=d$freq,min.freq = 3,max.words = 500,
          random.order = FALSE,rot.per=0.35,colors = 'blue')



######
w<-read.csv(file.choose())
w
w1<-Corpus(VectorSource(w))
w1

# step2: text cleaning t1_map
# remove whitespaces, numbers punctuations, stop words.
stopwords("english")
w1<-tm_map(w1,tolower)
w1<-tm_map(w1,removeNumbers)
w1<-tm_map(w1,removePunctuation)
w1<-tm_map(w1,removeWords,stopwords("english"))
w1<-tm_map(w1,stripWhitespace)

#step3: text transformation(special characters are replaced by space)
tospace<-content_transformer(function(x,pattern)gsub(pattern,' ',x))
w1<-tm_map(w1,tospace,'@')
w1<-tm_map(w1,tospace,',')
w1<-tm_map(w1,tospace,'?')
w1<-tm_map(w1,tospace,'_')
w1<-tm_map(w1,tospace,'/')

# step 4: text stemming stem the words like moving, moved...
w1<-tm_map(w1,stemDocument)

# step 5: document matrix: find the frequency of words
w1<-Corpus(VectorSource(w))
w1
w1<-TermDocumentMatrix(w1)
w1
w1<-as.matrix(w1)
w1
w1<-sort(rowSums(w1),decreasing=TRUE)


w1


d<-data.frame(word=names(w1),freq=w1)
d

#wordcloud
wordcloud(words=d$word,freq=d$freq,min.freq = 3,max.words = 500,
          random.order = FALSE,rot.per=0.35,colors = brewer.pal(8,'Dark2'))

