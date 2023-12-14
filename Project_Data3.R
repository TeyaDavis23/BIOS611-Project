library(tidyverse)
library(readr)


Number1_RichestAthlete <- read_csv("derived_data/Number1_RichestAthlete.csv")

Number1_Name <- Number1_RichestAthlete %>%
  group_by(Name) %>%
  tally() %>%
  arrange(desc(n))

write.csv(Number1_Name, "/home/rstudio/work/derived_data/Number1_Name.csv", 
          row.names = FALSE)


 
