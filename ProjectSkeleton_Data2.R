library(tidyverse)
library(readr)

Number1_RichestAthlete <- read_csv("derived_data/Number1_RichestAthlete.csv")

Number1_Sport <- Number1_RichestAthlete %>%
  group_by(new_Sport) %>%
  tally() %>%
  arrange(desc(n))

write.csv(Number1_Sport, "/home/rstudio/work/derived_data/Number1_Sport.csv", 
          row.names = FALSE)