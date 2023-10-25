library(tidyverse)
library(readr)

ForbesRichestAthletes <- read_csv("source_data/ForbesRichestAthletes.csv")

Number1_RichestAthlete <- ForbesRichestAthletes %>%
  filter(`Current Rank` == 1) %>%
  mutate(Sport2 = ifelse(Sport == "basketball", "Basketball", Sport),
         Sport3 = ifelse(Sport2 == "boxing", "Boxing", Sport2),
         Sport4 = ifelse(Sport3 == "golf", "Golf", Sport3))

write.csv(Number1_RichestAthlete, "/home/rstudio/work/derived_data/Number1_RichestAthlete.csv", 
          row.names = FALSE)



