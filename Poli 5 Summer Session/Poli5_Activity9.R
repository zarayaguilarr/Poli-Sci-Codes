#Comment: The script is addressing Activity 9 for poli 5 
# Question 1: Are countries with more freedom of speech more peaceful? 
# Question 2: Hypothesis - countries with freeedom of speech are more likely to be peaceful.
# Theory:Freedom of speech encourages people to speak up and discuss issues that are occuring within the country thus people are more likely to speak out.
#Null: There is no relationship between freedom of speech and the effect on the countries peacefulness. 

#Question 3
table(qog$peaceful)

Not Peaceful     Peaceful 
87                74 


ggplot(data = filter(qog, !is.na(freedom_exp)), aes(x = freedom_exp)) +
  geom_bar(fill = "lightblue",
           color = "black") +
  labs(title = "Number of countries with freedom of expression vs. Without ",
       x = "Freedom of Expression",
       y = "Frequency")



table(qog$freedom_exp)

Guaranteed    Not Guaranteed 
53                83 


ggplot(data = filter(qog, !is.na(peaceful)), aes(x = peaceful)) + 
  geom_bar(fill = "seagreen",
           color = "black") +
  labs(title = "Peaceful Countries Vs. Non Peacefeul Countries",
       x = "Peaceful",
       y = "Frequency")

#Question 4 - Bivariate

- The plot shows that countries that are not guaranteed freedom of expression are not as peaceful compared to countries with freedom of speech.This shows that the hypothesis was correct. 

ggplot(data = filter(qog,!is.na(peaceful) &
                       !is.na(freedom_exp)), aes(x = peaceful, fill = freedom_exp)) +
  geom_bar(position = "dodge") +
  labs(title = "Freedom of Expression and Peacefulness",
       fill = "Freedom of Expression",
       x = "Peaceful",
       y = "Frequency")


#Question 5 - Crosstable 

peace_freedom <- table(qog$peaceful, qog$freedom_exp)
peace_freedom

Guaranteed Not Guaranteed
Not Peaceful         21             62
Peaceful             32             21

Independent: Freedom of speech
Dependent: Peaceful


#Question 6 

prop.table(peace_freedom, 1)


Guaranteed Not Guaranteed
Not Peaceful  0.2530120      0.7469880
Peaceful      0.6037736      0.3962264

# Question 7 

prop.test(peace_freedom, correct = FALSE)

Peaceful      0.6037736      0.3962264

# The 95% confidence interval estimate of the difference between the peacefulness of a country and freedom of expression which shows the proportion 
# is between  -0.5122757 and  -0.189247 percentage points.
