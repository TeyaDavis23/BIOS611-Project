library(tidyverse)
library(readr)

Number1_RichestAthlete <- read_csv("derived_data/Number1_RichestAthlete.csv")
Number1_Name <- read_csv("derived_data/Number1_Name.csv")

ggplot(data = Number1_RichestAthlete, aes(x = factor(Name, levels = Number1_Name$Name))) +
  geom_histogram(stat = "count") +
  coord_flip() +
  xlab("Athlete's Name") +
  ylab("Count") +
  ggtitle("Histogram of #1 Appearances by Athlete on \n Forbes' Richest Athletes list
          between 1990 and 2020") +
  theme(plot.title = element_text(hjust = 0.5))

ggsave("Histogram1204.png", path = "/home/rstudio/work/figures", 
       width = 5, height = 3, )
