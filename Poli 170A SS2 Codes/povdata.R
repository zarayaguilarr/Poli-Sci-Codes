# POLI 170A: PIP - Poverty and Inequality Platform Data 
# Zaray Aguilar 

# Multivariate regression
model <- lm(headcount_ratio_international_povline ~ 
              headcount_ratio_lower_mid_income_povline + 
              headcount_ratio_upper_mid_income_povline + 
              headcount_ratio_100 + 
              headcount_ratio_1000 + 
              headcount_ratio_2000, 
            data = pip_data_ineq)

# Print summary of regression results 

summary(model)

Call:
  lm(formula = headcount_international_povline ~ headcount_ratio_lower_mid_income_povline + 
       headcount_ratio_upper_mid_income_povline + headcount_ratio_100 + 
       headcount_ratio_1000 + headcount_ratio_2000, data = pip_data_ineq)

Residuals:
  Min      1Q  Median      3Q     Max 
-864114  -68324   54945  317251  519472 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)                                 50504     283126   0.178   0.8593    
headcount_ratio_lower_mid_income_povline  -287139     274990  -1.044   0.3027    
headcount_ratio_upper_mid_income_povline   157391      75345   2.089   0.0431 *  
  headcount_ratio_100                       3734644     253373  14.740   <2e-16 ***
  headcount_ratio_1000                       -11307      60077  -0.188   0.8517    
headcount_ratio_2000                         3334      40934   0.081   0.9355    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 413300 on 40 degrees of freedom
Multiple R-squared:  0.9514,	Adjusted R-squared:  0.9453 
F-statistic: 156.5 on 5 and 40 DF,  p-value: < 2.2e-16



Call:
  lm(formula = headcount_international_povline ~ headcount_ratio_lower_mid_income_povline + 
       headcount_ratio_upper_mid_income_povline + headcount_ratio_100 + 
       headcount_ratio_1000 + headcount_ratio_2000 + year, data = pip_data_ineq)

Residuals:
  Min      1Q  Median      3Q     Max 
-868229 -137417   92614  260738  576410 

Coefficients:
  Estimate Std. Error t value           Pr(>|t|)    
(Intercept)                              149335377   51922728   2.876            0.00649 ** 
  headcount_ratio_lower_mid_income_povline      2526     272294   0.009            0.99265    
headcount_ratio_upper_mid_income_povline     35005      81339   0.430            0.66931    
headcount_ratio_100                        3336863     271052  12.311 0.0000000000000052 ***
  headcount_ratio_1000                        -45228      56512  -0.800            0.42837    
headcount_ratio_2000                         41095      39880   1.030            0.30914    
year                                        -74181      25801  -2.875            0.00651 ** 
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 380200 on 39 degrees of freedom
Multiple R-squared:  0.9599,	Adjusted R-squared:  0.9537 
F-statistic: 155.5 on 6 and 39 DF,  p-value: < 0.00000000000000022