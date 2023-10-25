library(tidyverse)
library(readr)

Number1_RichestAthlete <- read_csv("derived_data/Number1_RichestAthlete.csv")
Number1_Sport <- read_csv("derived_data/Number1_Sport.csv")

ggplot(data = Number1_RichestAthlete, aes(x = factor(Sport4, levels = Number1_Sport$Sport4))) +
  geom_histogram(stat = "count") +
  xlab("Sport") +
  ylab("Count") +
  ggtitle("Histogram of Forbes' Richest Athlete \n by Sport from 1990-2020") +
  theme(plot.title = element_text(hjust = 0.5))

ggsave("Histogram1025.png", path = "/home/rstudio/work/figures", 
       width = 5, height = 3, )
