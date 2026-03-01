# POLI 176: State of the Union speeches Lab 8 Edited for Quiz 
#Data and code inspiration from http://programminghistorian.github.io/ph-submissions/lessons/published/basic-text-processing-in-r

#Install Necessary Packages (just need to do this once)
#install.packages("tidyverse")
#install.packages("tokenizers")
#install.packages("quanteda")
#Load package libraries
library(tidyverse)
library(tokenizers)
library(quanteda)
library(quanteda.textplots)
#New library you will need:LDA and STM 
#install.packages("stm")
library(stm)
#install.packages("seededlda")
library(seededlda)
#Set working directory.  To find your working directory go to Session --> Set Working Directory --> Choose Directory
setwd("/Users/aguilar/Desktop/POLI 176 ")
#Load data for speeches
metadata <- read_csv("SOTU_WithText.csv")
#Look at data
metadata

#Create a corpus of the state of the union speeches
corpus_sotu <- corpus(metadata, text_field = "text")
corpus_sotu

#Some common pre-processing
toks <- tokens(corpus_sotu, remove_punct = TRUE, remove_numbers=TRUE)
toks <- tokens_wordstem(toks)
toks <- tokens_select(toks,  stopwords("en"), selection = "remove")
dfm <- dfm(toks)

#We can trim the dfm of rare words
dfm_trimmed <- dfm_trim(dfm, min_docfreq = 0.05, docfreq_type = "prop")
dfm_trimmed

######
#LDA
######
#Run LDA using quanteda
set.seed(135262007)
lda <- textmodel_lda(dfm_trimmed, k = 10)

#Most likely term for each topic
lda.terms <- terms(lda, 10)
lda.terms

#Topical content matrix
mu <- lda$phi
dim(mu) #10 topics, 4261 words
mu[1:10,1:20]
#Most representative words in Topic 1
mu[1,][order(mu[1,], decreasing=T)][1:10]

#Topical prevalence matrix
pi <- lda$theta
dim(pi) #number of docs by number of topics

#Most representative documents in Topic 1
metadata[order(pi[,1],decreasing=T),]

#Plot the prevalence of a topic over time
plot(metadata$year, pi[,4], pch=16, xlab="Year",
     ylab="Topic 4")


# Run a 20 topic LDA topic model on the State of the Union 
lda.terms <- terms(lda, 20)
lda.terms


# Labe eac h topic by assigning it a number based on most likely terms in the topic 
topic_labels <- data.frame()
for (i in 1:length(lda.terms)) {
  top_terms <- lda.terms[[i]]
  label <- paste(top_terms, collapse = ', ')
  topic_labels <- rbind(topic_labels, data.frame(Topic = paste("Topic", i), Label = label))
}
topic_labels



