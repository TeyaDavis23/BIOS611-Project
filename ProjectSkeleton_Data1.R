library(tidyverse)
library(readr)

ForbesRichestAthletes <- read_csv("source_data/ForbesRichestAthletes.csv")

ForbesRichestAthletes <- ForbesRichestAthletes %>%
  mutate(new_Sport = ifelse(Sport %in% c("American Football / Baseball", "NFL"), 
                            "American Football", Sport),
         new_Sport = ifelse(Sport %in% c("auto racing", "Auto racing", "Auto Racing (Nascar)",
                                         "F1 Motorsports", "F1 racing", "NASCAR"), "Auto Racing", new_Sport),
         new_Sport = ifelse(Sport == "baseball", "Baseball", new_Sport),
         new_Sport = ifelse(Sport %in% c("basketball", "NBA"), "Basketball", new_Sport),
         new_Sport = ifelse(Sport == "boxing", "Boxing", new_Sport),
         new_Sport = ifelse(Sport == "cycling", "Cycling", new_Sport),
         new_Sport = ifelse(Sport == "golf", "Golf", new_Sport),
         new_Sport = ifelse(Sport %in% c("ice hockey","Ice Hockey"), "Hockey", new_Sport),
         new_Sport = ifelse(Sport == "MMA", "Mixed Martial Arts", new_Sport),
         new_Sport = ifelse(Sport == "motorcycle gp", "Motorcycling", new_Sport),
         new_Sport = ifelse(Sport == "soccer", "Soccer", new_Sport),
         new_Sport = ifelse(Sport == "tennis", "Tennis", new_Sport),
         Name = ifelse(Name == "Aaron Rogers", "Aaron Rodgers", Name),
         Name = ifelse(Name == " Shaquille O'Neal", "Shaquille O'Neal", Name))

write.csv(ForbesRichestAthletes, "/home/rstudio/work/source_data/ForbesRichestAthletes.csv", 
          row.names = FALSE)

Number1_RichestAthlete <- ForbesRichestAthletes %>%
  filter(`Current Rank` == 1) 
  

write.csv(Number1_RichestAthlete, "/home/rstudio/work/derived_data/Number1_RichestAthlete.csv", 
          row.names = FALSE)



