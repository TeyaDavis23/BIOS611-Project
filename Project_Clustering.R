library(tidyverse)

#Read in the data, select columns for PCA

ForbesRichestAthletes <- read_csv("work/source_data/ForbesRichestAthletes.csv")
forPCA <- ForbesRichestAthletes %>%
  select(c(`Current Rank`, `Year`, `earnings ($ million)`))

#Principal Components Analysis

results <- prcomp(forPCA, center = TRUE, scale = TRUE)
 plot(results, type = "l")

#From the plot of variances as a function of the number of components, we can
#see that most of the variance in the data is explained by the first two 
#principal components.

#Cluster Analysis in PCA Space

ggplot(results$x %>% as_tibble(), aes(PC1,PC2)) + 
  geom_point()

#From the scatter plot of the first and second components, it does not look like
# there are any significant clusters in the data. Therefore, the t-SNE projection
# and the cluster analysis (using k-means) and the mutual information would not
# be helpful in understanding this data.

