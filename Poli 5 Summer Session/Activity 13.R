setwd("/Users/aguilar/Desktop/Poli Sci Code Files/Poli 5 Summer Session ") 
library(tidyverse)
college_data <- readRDS("college_data.rds")

college_data <- college_data %>% mutate(sat_avg_2013_dummy = sat_avg_2013 == "SAT 2013")

sum(college_data$sat_avg_2013_dummy, na.rm = TRUE)
mean(college_data$sat_avg_2013_dummy, na.rm = TRUE)

# Nominal variables 

college_data %>% 
  # Drop NAs
  filter(!is.na(sat_avg_2013)) %>% 
  # Start plotting
  ggplot(aes(x = sat_avg_2013, y = tier_name)) +
  geom_boxplot() +
  labs(title = "2013 SAT Averages and College Tiers",
       y = "College Tiers",
       x = "SAT Averages 2013") +
  theme_bw()

# Based on the boxplot the relationship between the Average SAT scores and college tiers from 2013 show how elite and ivy schools are more likely to have higher SAT averages. 
# The relationship between the lower SAT scores and the selectivity

collegeinfo <- lm(sat_avg_2013 ~ tier, data = college_data)
summary(collegeinfo)

lm(formula = sat_avg_2013 ~ tier, data = college_data)

Residuals:
  Min      1Q  Median      3Q     Max 
-298.57  -72.89    3.93   73.93  431.22 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) 1421.992     13.695  103.83   <2e-16 ***
  tier         -66.821      2.478  -26.96   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1



