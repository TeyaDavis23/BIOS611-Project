library(tidyverse)
library(readr)

ForbesRichestAthletes <- read_csv("source_data/ForbesRichestAthletes.csv")
Sport_Earnings <- read_csv("derived_data/Sport_Earnings.csv")

ggplot(data = Sport_Earnings, aes(x = Year, y = total_earnings)) +
  geom_point(aes(color = new_Sport)) +
  xlab("Year") +
  ylab("Combined Earnings (in millions of dollars)") +
  ggtitle("Scatterplot of Combined Earnings by Sport vs. Year for \n Forbes' Richest Athletes") +
  theme(plot.title = element_text(hjust = 0.5)) +
  guides(color = guide_legend(title = "Sport"))

ggsave("Scatterplot1204.png", path ="/home/rstudio/work/figures", 
       width = 5, height = 3)

