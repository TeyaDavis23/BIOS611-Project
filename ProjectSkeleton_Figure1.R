library(tidyverse)
library(readr)

ForbesRichestAthletes <- read_csv("source_data/ForbesRichestAthletes.csv")

ggplot(data = ForbesRichestAthletes, aes(x = Year, y = `earnings ($ million)`)) +
  geom_point() +
  xlab("Year") +
  ylab("Earnings (in millions of dollars)") +
  ggtitle("Scatterplot of Earnings vs. Year for \n Forbes' Richest Athletes") +
  theme(plot.title = element_text(hjust = 0.5))
  
ggsave("Scatterplot1025.png", path ="/home/rstudio/work/figures", 
       width = 5, height = 3)
  

