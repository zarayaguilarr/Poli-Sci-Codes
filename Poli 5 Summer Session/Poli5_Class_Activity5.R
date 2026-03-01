# Class Activity 5 for Poli 5 
# install.packages("tidyverse")
#Tidyverse package from your library: library(tidyverse)
#Copy and paste the code: countries <- read.csv("https://raw.githubusercontent.com/lfalab/econpoli5/main/countries.csv")
#1: popualtion_vector<- countries$population
#2: india <-c(name = "India", code = "IND", population = 1310152403, urban.pop = 429428653, carbon.emissions = 2337749170)
#3:mexico_urban_population <- countries$urban.pop[countries$country.name == "Mexico"]
#4: countries$pct.urban<- (countries$urban.pop/countries$population)*100
#   pct.urban<- c(countries$urban.pop/countries$population)*100
#   emissions.pc<- c(countries$carbon.emissions/countries$population)*100
#   log.emissions.pc<- c(log(countries$cardbon.emissions/countries$population * 100))
#5: plot(countries$pct.urban, countries$log.emissions.pc, 
+      xlab = "Percent Urban", 
+      ylab = "Log of Carbon Emissions per capita", 
+      main = "Scatter Plot: Urbanization vs. Carbon Dioxide Emissions")
#6: There seems to be a negative correlation between urbanization and carbon dioxide emissions since the scatter plot shows a weak negative correlation. The clusters move in a downward trend while also having outliers.
