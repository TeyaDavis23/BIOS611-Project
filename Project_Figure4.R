library(tidyverse)
library(readr)

ForbesRichestAthletes <- read_csv("source_data/ForbesRichestAthletes.csv")
Sport_Earnings <- read_csv("derived_data/Sport_Earnings.csv")

ggplot(data = Sport_Earnings, aes(x = Year, y = total_earnings)) +
  geom_point(aes(color = new_Sport)) +
  xlab("Year") +
  ylab("Combined Earnings \n (in millions of dollars)") +
  ggtitle("Scatterplot of \n Combined Earnings by Sport vs. Year") +
  theme(plot.title = element_text(hjust = 0.5)) +
  guides(color = guide_legend(title = "Sport")) +
  theme(legend.text = element_text(size=5),
        legend.key.size = unit(0.35, 'cm'),
        legend.title = element_text(size=8))

ggsave("Scatterplot1204.png", path ="/home/rstudio/work/figures", 
       width = 5, height = 3)

