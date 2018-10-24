dat = read.csv("/home/rahulbajaj/Downloads/student-alcohol-consumption/student-mat.csv", header = TRUE)
library(tidyverse)  # data manipulation
library(cluster)    # clustering algorithms
library(factoextra) # clustering visualization
library(dendextend) 
df <- dat
df <- na.omit(df)
df <- scale(df)
head(df)
# compute divisive hierarchical clustering
hc4 <- diana(df)

# Divise coefficient; amount of clustering structure found
hc4$dc
## [1] 0.9288781

# plot dendrogram
pltree(hc4, cex = 0.6, hang = -1, main = "Dendrogram of diana")