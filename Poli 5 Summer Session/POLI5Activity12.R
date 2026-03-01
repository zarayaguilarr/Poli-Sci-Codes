# This R script is used for Activity 12
# Poli 5: Data Analytics for the Social Sciences, UCSD
# Zaray Aguilar 

qog <- read_csv("https://raw.githubusercontent.com/lfalab/econpoli5/main/simplified_qog.csv")

1. Together with your colleagues, you will approach the research questions below:
  a. Do democracies spend more in education than dictatorships?
  
  ggplot(data = qog %>% filter(!is.na(reg_type)),
         aes(x = reg_type, y = wdi_expedu)) +
  geom_bar(stat = "summary",
           color = "hotpink",
           fill = "lightpink") +
  labs(
    y = "Regime Type",
    x = "Mean Education Sending",
    title = "Mean Education Spending (as % of GDP) and Regime Type",
    subtitle = "By Country"
  ) +
  theme_bw()


Theory: When countries are able to spend more in education, it also allows them to gain access to information along with becoming democratic.
Hypothesis: Countries that spend more in education are more likely to be democracies than those who do not.
Null Hypothesis: There is no difference in the amount spent in education for countries that are democracies or dictatorships 
Independent Variable: Money Spent on Education 
Dependent Variable: Regime Type
  
p-value: 7.002e-05 which is less than 0.01 so we can reject the null hypothesis at a 99% confidence interval.

Confounding Variables:Country Wealth, the wealthier a country is the more likely a country is to be able to give access to education to more people in the country


  b. Do democracies spend more in the military than dictatorships?
  
    ggplot(data = qog %>% filter(!is.na(reg_type)),
           aes(x = reg_type, y = wdi_expmil)) +
    geom_boxplot() +
    labs(
      y = "Military Spending",
      x = "Regime Type",
      title = "Military Expenditure (as % of GDP) and Regime Type",
      subtitle = "By Country"
    ) +
    theme_bw()
  
  
  c. Do urban countries spend more in education than rural countries?
  
  
  
  2. Elaborate a theory for each research question.




3. For each research question, formulate a hypothesis and state the null hypothesis. What
is the dependent variable? And the independent variable?
  
  
  
  
  4. Make one or more plots describing the relationship between the variables in each
research question. You can make a bivariate bar plot with means, a bivariate box plot, or
both. You can find templates in today’s lesson code.




5. For each research question, use the t.test() function to conduct a hypothesis test
using the p-value. Can we reject the null hypothesis?
  
  
  
  
  6. For each research question, discuss: what are some possible confounding variables not
being taken into account in this hypothesis test?
  