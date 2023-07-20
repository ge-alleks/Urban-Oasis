Urban Oasis

#Load the essential packages
library(dplyr)
library(ggplot2)
library(caret)
library(purrr)
library(stringr)

# Setting the seed 
set.seed(1000)

# Load the dataset
urban_data <- read.csv("urban_oasis.csv")

# Exploratory data analysis
head(urban_data)
summary(urban_data) 

# Data cleaning 
urban_data <- urban_data %>% 
  filter(!is.na(Total_Population)) %>%
  filter(Total_Population != 0)

# Feature engineering 
urban_data$Population_Density <- urban_data$Total_Population / urban_data$Land_Area 

urban_data$Total_Area <- urban_data$Land_Area + urban_data$Water_Area 

urban_data$Population_Ratio <- urban_data$Total_Population / urban_data$Total_Area 

# Creating a new column for understanding the ratio of water area to total area 
urban_data$Water_Ratio <-  urban_data$Water_Area / urban_data$Total_Area

# Data visualization 
ggplot(urban_data, aes(x = Population_Density, y = Total_Population)) +
  geom_point() +
  xlab("Population Density") +
  ylab("Total Population") +
  ggtitle("Population Density vs Total Population")

ggplot(urban_data, aes(x = Population_Ratio, y = Total_Population)) +
  geom_point() +
  xlab("Population Ratio") +
  ylab("Total Population") +
  ggtitle("Population Ratio vs Total Population")

ggplot(urban_data, aes(x = Water_Ratio, y = Total_Population)) +
  geom_point() +
  xlab("Water Ratio") +
  ylab("Total Population") +
  ggtitle("Water Ratio vs Total Population")

# Split the dataset into training and testing sets 
# Create an index vector for training data 
train_index <- createDataPartition(urban_data$Total_Population, p = .75, list = FALSE)

# Create a training dataset
train_set <- urban_data[train_index,]

# Create a testing dataset 
test_set <- urban_data[-train_index,]

# Train the model 
model <- train(Total_Population ~ .,
               data = train_set,
               method = "glm",
               family = poisson())

# Make predictions 
predictions <- predict(model, newdata = test_set)

# Evaluate the model 
confusionMatrix(predictions, test_set$Total_Population) 

# Visualize the results 
ggplot(test_set, aes(x = predictions, y = Total_Population)) +
  geom_point() +
  stat_smooth(method = "lm", col = "red") +
  xlab("Predicted Population") +
  ylab("Observed Population") +
  ggtitle("Predicted vs Observed Population")

# Save the model 
saveRDS(model, file = "urban_oasis.rds")