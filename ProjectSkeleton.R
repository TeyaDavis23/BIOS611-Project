library(tidyverse)
library(readr)



ForbesRichestAthletes <- read_csv("source_data/ForbesRichestAthletes.csv")

ggplot(data = ForbesRichestAthletes, aes(x = Year, y = `earnings ($ million)`)) +
  geom_point() +
  xlab("Year") +
  ylab("Earnings (in millions of dollars)") +
  ggtitle("Scatterplot of Earnings vs. Year for \n Forbes' Richest Athletes") +
  theme(plot.title = element_text(hjust = 0.5))
  
ggsave("Scatterplot1025.png", width = 5, height = 3)
  
  

Number1_RichestAthlete <- ForbesRichestAthletes %>%
  filter(`Current Rank` == 1) %>%
  mutate(Sport2 = ifelse(Sport == "basketball", "Basketball", Sport),
          Sport3 = ifelse(Sport2 == "boxing", "Boxing", Sport2),
          Sport4 = ifelse(Sport3 == "golf", "Golf", Sport3))


Number1_Sport <- Number1_RichestAthlete %>%
  group_by(Sport4) %>%
  tally() %>%
  arrange(desc(n))


ggplot(data = Number1_RichestAthlete, aes(x = factor(Sport4, levels = Number1_Sport$Sport4))) +
  geom_histogram(stat = "count") +
  xlab("Sport") +
  ylab("Count") +
  ggtitle("Histogram of Forbes' Richest Athlete \n by Sport from 1990-2020") +
  theme(plot.title = element_text(hjust = 0.5))

ggsave("Histogram1025.png", width = 5, height = 3)
