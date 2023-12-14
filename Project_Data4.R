library(tidyverse)
library(readr)

ForbesRichestAthletes <- read_csv("source_data/ForbesRichestAthletes.csv")

Sport_Earnings <- ForbesRichestAthletes %>%
  group_by(Year, new_Sport) %>%
  mutate(`earnings ($ million)` = as.numeric(`earnings ($ million)`)) %>%
  summarize(total_earnings = sum(`earnings ($ million)`))

write.csv(Sport_Earnings, "/home/rstudio/work/derived_data/Sport_Earnings.csv", 
          row.names = FALSE)