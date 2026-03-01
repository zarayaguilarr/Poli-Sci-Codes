setwd("/Users/aguilar/Desktop/Poli Sci Code Files/Poli 5 Summer Session ")
# Poli 5 Class Activity 6 
#Read cadata_new <- read.csv("cadata_new.csv")
cadata_new <- read.csv("cadata_new.csv")

library(tidyverse)

View(cadata_new)

#Tasks 
# 1. Start by analyzing Inc_Change descriptively: get the summary statistics by running
# 2. a) -10.8429 b) 11.8563  c) -5.0959% d) -2.6583 e) -0.8585
# 3. 
ggplot(data = cadata_new, aes(x = Inc_Change)) + 
  geom_histogram(breaks = seq(0, 20, 5), fill = "pink", color = "black") +
  scale_x_continuous(breaks = seq(0, 20, 5)) +
  scale_y_continuous(breaks = seq(0, 18, 1)) +
  labs(title = "Distribution of Household Income",
       subtitle = "California Counties, 2012 to 2016",
       x = "Change in Household Income from 2012 to 2016",
       y = "Frequency")
