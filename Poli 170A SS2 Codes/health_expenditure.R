# POLI 170A: Helath Expenditure per country 
# Zaray Aguilar 

# Create data frame with data
health_exp <- data.frame(
  Country = rep(c("Mexico", "Canada", "United States"), each = 11),
  Year = rep(2010:2020, times = 3),
  PerCapitaExp = c(
    539.2655, 570.7305, 587.8284, 631.2134, 615.1031, 558.1651, 492.874, 514.8897, 530.6479, 552.7042, 538.5746,
    5096.1235, 5437.8521, 5541.5771, 5484.8076, 5231.9478, 4679.9761, 4668.236, 4900.6689, 5052.6777, 5083.7256, 5619.416,
    7832.2666, 8020.4399, 8272.958, 8431.1826, 8824.7764, 9243.6211, 9594.743, 9904.2373, 10284.5547, 10661.0283, 11702.4092
  )
)

# Filter data for years 2010 and 2020
filtered_data <- health_exp %>% filter(Year %in% c(2010, 2020))

# Regression analysis
model <- lm(PerCapitaExp ~ Year, data = filtered_data)

# Print the regression summary
summary(model)


Call:
  lm(formula = PerCapitaExp ~ Year, data = filtered_data)

Residuals:
  1       2       3       4       5       6 
-3950.0 -5414.9   606.9  -334.1  3343.0  5748.9 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)
(Intercept) -289824.6   778800.2  -0.372    0.729
Year            146.4      386.5   0.379    0.724

Residual standard error: 4734 on 4 degrees of freedom
Multiple R-squared:  0.03464,	Adjusted R-squared:  -0.2067 
F-statistic: 0.1435 on 1 and 4 DF,  p-value: 0.7241


