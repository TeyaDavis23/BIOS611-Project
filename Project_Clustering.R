library(tidyverse)

#Read in the data, select columns for PCA

ForbesRichestAthletes <- read_csv("source_data/ForbesRichestAthletes.csv")
forPCA <- ForbesRichestAthletes %>%
  select(c(`Current Rank`, `Year`, `earnings ($ million)`))

#Principal Components Analysis

results <- prcomp(forPCA, center = TRUE, scale = TRUE)
 plot(results, type = "l")

dev.copy(png,'/home/rstudio/work/figures/PCA1.png')
dev.off()
 

#From the plot of variances as a function of the number of components, we can
#see that most of the variance in the data is explained by the first two 
#principal components.

#Cluster Analysis in PCA Space
 
plotData <- as.data.frame(cbind(results$x, ForbesRichestAthletes$new_Sport))

plotData <- plotData %>%
  rename(new_Sport = V4) %>%
  mutate(PC1 = as.numeric(PC1),
         PC2 = as.numeric(PC2))

ggplot(plotData %>% as_tibble(), aes(PC1,PC2)) + 
  geom_point()

ggsave("PCA2.png", path = "/home/rstudio/work/figures", 
       width = 5, height = 3, )

ggplot(plotData %>% as_tibble(), aes(PC1,PC2)) + 
  geom_point(aes(color = new_Sport)) +
  guides(color = guide_legend(title = "Sport")) +
  theme(legend.text = element_text(size=5),
        legend.key.size = unit(0.35, 'cm'),
        legend.title = element_text(size=8))

ggsave("PCA3.png", path = "/home/rstudio/work/figures", 
       width = 5, height = 3, )

#From the scatter plot of the first and second components, it does not look like
# there are any significant clusters in the data. Therefore, the t-SNE projection
# and the cluster analysis (using k-means) and the mutual information would not
# be helpful in understanding this data.


