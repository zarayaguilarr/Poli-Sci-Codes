# POLI 170A: Percentage of population that uses private helath insurance 
# Zaray Aguilar 

# Data frame with data
private_health <- data.frame(
  country = c("Mexico", "United States", "Canada"),
  country_code = c("MEX", "USA", "CAN"),
  privatehealth_exp = c(
    49.78125, 47.19612, 46.91788, 46.24884, 47.91830, 47.79903,
    48.72028, 49.46463, 50.37167, 50.83271, 47.10270, NA,
    51.13160, 51.05164, 51.15853, 50.47715, 49.18666, 48.62709,
    48.86335, 48.93774, 48.70055, 48.45556, 43.23085, NA,
    30.07878, 29.76372, 29.53188, 29.25605, 29.40834, 29.34322,
    30.31843, 30.26714, 30.13973, 30.21990, 25.03173, 25.46032524
  ),
  year = rep(2010:2021, times = 3)
)

# Unique country names
unique_countries <- unique(private_health$country)

# Look through each country and do separate bivariate regression
for (country in unique_countries) {
  cat("Regression Table for", country, "\n")
  
# Subset data for the country
  subset_data <- subset(private_health, country == country)
  
# Bivariate regression
  regression_model <- lm(privatehealth_exp ~ year, data = subset_data)
  
# Regression summary
  print(summary(regression_model))
  cat("\n")
}
#Mexico Regression Table

Call:
  lm(formula = privatehealth_exp ~ year, data = subset_data)

Residuals:
  Min      1Q  Median      3Q     Max 
-14.666 -11.022   5.676   7.439  10.700 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)
(Intercept)  917.4155  1029.2756   0.891    0.379
year          -0.4345     0.5108  -0.851    0.401

Residual standard error: 9.757 on 32 degrees of freedom
(2 observations deleted due to missingness)
Multiple R-squared:  0.02212,	Adjusted R-squared:  -0.008443 
F-statistic: 0.7237 on 1 and 32 DF,  p-value: 0.4012

# United States Regression Table 

Call:
  lm(formula = privatehealth_exp ~ year, data = subset_data)

Residuals:
  Min      1Q  Median      3Q     Max 
-14.666 -11.022   5.676   7.439  10.700 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)
(Intercept)  917.4155  1029.2756   0.891    0.379
year          -0.4345     0.5108  -0.851    0.401

Residual standard error: 9.757 on 32 degrees of freedom
(2 observations deleted due to missingness)
Multiple R-squared:  0.02212,	Adjusted R-squared:  -0.008443 
F-statistic: 0.7237 on 1 and 32 DF,  p-value: 0.4012

#Canada Regression Table 

Call:
  lm(formula = privatehealth_exp ~ year, data = subset_data)

Residuals:
  Min      1Q  Median      3Q     Max 
-14.666 -11.022   5.676   7.439  10.700 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)
(Intercept)  917.4155  1029.2756   0.891    0.379
year          -0.4345     0.5108  -0.851    0.401

Residual standard error: 9.757 on 32 degrees of freedom
(2 observations deleted due to missingness)
Multiple R-squared:  0.02212,	Adjusted R-squared:  -0.008443 
F-statistic: 0.7237 on 1 and 32 DF,  p-value: 0.4012




