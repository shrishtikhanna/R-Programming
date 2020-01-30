install.packages("ggplot2")
#The ggplot2 package, created by Hadley Wickham,
#offers a powerful graphics language for creating elegant and complex plots.
#Its popularity in the R community has exploded in recent years. 
#There is a helper function called qplot() (for quick plot) that can hide 
#much of this complexity when creating standard graphs.

install.packages("tm")
#the tm_map() function is used to remove unnecessary white space, 
#to convert the text to lower case, to remove common stopwords like 'the', "we".
#The information value of 'stopwords' is near zero due to the fact that they are so common in a language. Removing this kind of words is useful before further analyses. For 'stopwords', supported languages are danish, dutch, english, finnish, french, german, hungarian, italian, norwegian, portuguese, russian, spanish and swedish. Language names are case sensitive.
#You could also remove numbers and punctuation with removeNumbers and removePunctuation arguments.

install.packages("wordcloud")
#One can create a word cloud, also referred as text cloud or tag cloud,
#which is a visual representation of text data. 
#The text mining package (tm) and the word cloud generator package (wordcloud)
#are available in R for helping us to analyse texts and
#to quickly visualize the keywords as a word cloud.
install.packages("syuzhet")
#SnowballC package is used for text stemming.
#Text stemming  reduces words to their root form.
#In other words, this process removes suffixes from words to make it simple
#and to get the common origin. 
#For example, a stemming process reduces the words "moving", "moved" and "movement" to the root word, "move".
install.packages("SnowballC")
#The package comes with four sentiment dictionaries and provides a method for accessing the robust,
#but computationally expensive, sentiment extraction tool.
#The goal of this vignette is to introduce the main functions in the package
#so that you can quickly extract plot and sentiment data from your own textfiles

library(ggplot2)
library(tm)
library(wordcloud)
library(syuzhet)
library(SnowballC)

getwd()
setwd("C:/Users/18578/OneDrive/Documents/R")
texts=readLines("a.txt") #Change the text file name according to your file name
docs=Corpus(VectorSource(texts))
trans=content_transformer(function(x,pattern)gsub(pattern,"",x))
docs=tm_map(docs,trans,"/")
docs=tm_map(docs,trans,"@")
docs=tm_map(docs,trans,"\\|")
docs=tm_map(docs,content_transformer(tolower))
docs=tm_map(docs, removeWords, c("papa"))
docs=tm_map(docs, removeWords, c("Shrishti"))
docs=tm_map(docs, removeWords, c("shrishti"))
docs=tm_map(docs, removeWords, c("omit"))
docs=tm_map(docs, removeWords, c("cal"))
docs=tm_map(docs,removeNumbers)
docs=tm_map(docs,removeWords,stopwords("english"))
docs=tm_map(docs,removePunctuation)
docs=tm_map(docs,stripWhitespace)
docs=tm_map(docs,stemDocument)

dtm=TermDocumentMatrix(docs)
memory.limit()
mat=as.matrix(dtm)
mat
v=sort(rowSums(mat),decreasing=TRUE)
v
d=data.frame(word=names(v),freq=v)
head(d)
wordcloud(words=d$word,freq=d$freq,min=1,max.words=200,random.order=F,rot.per=0.35,colors=brewer.pal(8,"Dark2"))
#### To make the wordcloud
getwd()

sentiment=get_nrc_sentiment(texts)
text=cbind(texts,sentiment)
print(text)
table(text)
View(text)
TotalSentiment=data.frame(colSums(text[,c(2:11)]))
TotalSentiment

names(TotalSentiment)="count"

TotalSentiment=cbind("sentiment"=rownames(TotalSentiment),TotalSentiment)


ggplot(data=TotalSentiment,aes(x=sentiment,y= count))+geom_bar(aes(fill=sentiment),stat="identity")+
  theme(legend.position="none")+xlab("sentiment")+ylab("Total Count")+ggtitle("Total Sentiment Score")

