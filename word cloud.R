install.packages("wordcloud")
library(wordcloud)

# Sample data
words <- c("apple", "banana", "orange", "apple", "apple", "banana", "grape", "orange", "orange")

# Create a word frequency table
word_freq <- table(words)

# Generate the word cloud
wordcloud(names(word_freq), word_freq,  min.freq = 1,max.words=200,
          random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))

