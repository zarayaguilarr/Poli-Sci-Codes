oic %>% 
  ggplot(aes(x = sat_avg_2013)) +
  geom_histogram(breaks = seq(0, 100, 10),
                 color = "black",
                 fill = "gray") +
  scale_x_continuous(breaks = seq(0, 100, 10)) +
  labs(title = "Average SAT Scores based on regio",
       x = "Percentage of Health and Medicine Majors)",
       y = "Frequency") +
  theme_bw()

oic %>% 
  ggplot(aes(x = region/1000, y = sat_avg_2013)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  scale_y_continuous(breaks = seq(50, 90, 10), limits = c(50, 90)) +
  scale_x_continuous(breaks = seq(0, 100, 10)) +
  labs(
    title = "Average SAT Scores based on region",
    y = "Average SAT scores",
    x = "Region",
    caption = "Source: Opportunities Insight"
  ) +
  theme_bw()


---------------------------------------------------------------------------
  oic %>% 
  ggplot(aes(x = log(sat_avg_2013))) +
  geom_histogram(breaks = seq(4, 12, 1),
                 color = "black",
                 fill = "gray") +
  scale_x_continuous(breaks = seq(4, 12, 1), limits = c(5, 12)) +
  labs(title = "Log of Average SAT Scores",
       x = "Avg SAT score",
       y = "Frequency") +
  theme_bw()

oic %>% 
  ggplot(aes(x = log(region))) +
  geom_histogram(breaks = seq(4, 12, 1),
                 color = "black",
                 fill = "gray") +
  scale_x_continuous(breaks = seq(4, 12, 1), limits = c(5, 12)) +
  labs(title = "Log of region",
       x = "Log region",
       y = "Frequency") +
  theme_bw()

-------------------------------------------------------------
ggplot(data = your_data, aes(x = log(exp_instr_pc_2013, y = log(avgfacsal_2013))) +
  geom_point() +
  labs(title = "Instructional Expenditures vs. Average Faculty Salary",
       x = "Log(Instructional Expenditures)",
       y = "Log(Average Faculty Salary)")
  
  

  USE THIS CODE TO CREATE !!!
  
  ggplot(oic, aes(x = factor(year), y = value, fill = variable)) +
    geom_bar(stat = "identity", position = "dodge") +
    labs(title = "Comparison of Average SAT Scores and Graduation Rates",
         x = "Year",
         y = "Value") +
    scale_fill_manual(values = c("sat_avg_2013" = "lavender", "grad_rate_150_p_2013" = "lightpink")) +
    theme_minimal()
  
  
  