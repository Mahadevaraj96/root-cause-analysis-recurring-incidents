library(dplyr)
library(readr)
library(cluster)
library(factoextra)

# Load data
data <- read_csv("Incident_Logs.csv")

# Select features
clustering_data <- data %>%
  select(Priority, Resolution_Time_Hours) %>%
  mutate(Priority = as.numeric(factor(Priority)))

# K-means clustering
set.seed(123)
k2 <- kmeans(clustering_data, centers = 3, nstart = 25)

# Visualize clusters
fviz_cluster(k2, data = clustering_data,
             geom = "point", ellipse.type = "convex",
             palette = "jco", ggtheme = theme_minimal())
