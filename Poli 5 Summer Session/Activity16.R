# POLI 5 Activity 16 
# Zaray Aguilar 

library(tidyverse)

Independent variable: region
Dependent variable: sat_avg_2013

Theory: Regional differences can impact how students receive education, resources and may even impact average SAT scores. Students from regions with stronger education systems that emphasize the significance of academic achievements may have higher average SAT scores compared to students from regions with weaker education systems. 
Hypothesis: Students from regions that have higher average SAT scores are more likely to be selected and attend colleges from higher tiers compared to students from regions with lower average SAT scores. This m ay happen because some regions may have better educational resources that can allow students to be more educationally prepared and potentially perform better on the SAT. 
Null Hypothesis: Average SAT scores based on regional differences have no significant impact on the selectivity of students from different tiers. It could be that the average SAT scores in certain regions do not influence the likelihood of students from certain regions being selected to higher or lower tier colleges.  


> install.packages("lmtest")
> library(lmtest)
> reg_model <- lm(sat_avg_2013 ~ region, data = college_data)
> summary(reg_model)

Call:
  lm(formula = sat_avg_2013 ~ region, data = college_data)

Residuals:
  Min      1Q  Median      3Q     Max 
-337.50  -93.54  -22.77   66.46  496.77 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) 1080.305     11.457  94.288   <2e-16 ***
  region        -6.768      4.411  -1.534    0.125    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 139.9 on 995 degrees of freedom
(1466 observations deleted due to missingness)
Multiple R-squared:  0.00236,	Adjusted R-squared:  0.001357 
F-statistic: 2.354 on 1 and 995 DF,  p-value: 0.1253 

Multivariate: 

>  new_reg_model <- lm(sat_avg_2013 ~ tier + region, data = college_data)
> summary(new_reg_model)
Call:
  lm(formula = sat_avg_2013 ~ tier + region, data = college_data)

Residuals:
  Min      1Q  Median      3Q     Max 
-294.97  -74.25    3.42   73.97  440.66 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) 1436.137     15.807  90.856   <2e-16 ***
  tier         -66.783      2.476 -26.976   <2e-16 ***
  region        -5.991      3.354  -1.786   0.0743 .  
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 106.4 on 994 degrees of freedom
(1466 observations deleted due to missingness)
Multiple R-squared:  0.424,	Adjusted R-squared:  0.4229 
F-statistic: 365.9 on 2 and 994 DF,  p-value: < 2.2e-16



  