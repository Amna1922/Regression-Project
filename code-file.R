?(dataset)
dataset
head(dataset)
# Display the first 3 rows of the datasetset
head(dataset,3)

# Use the 'dim()' function to obtain the dimensions of the datasetset
# This returns a vector with the number of rows and columns in datasetset
dim(dataset)

# Use the 'names()' function to get the names of the columns in the datasetset
names(dataset)

# Use the 'summary()' function to generate a statistical summary of the datasetset
# This provides a quick overview of the dataset, including min, max, mean, and quartiles for numeric dataset
summary(dataset)

# Fit a simple linear regression model
#SLM <- lm(Sepal.Length ~ Petal.Length, dataset = dataset)
# Print the summary of the model
#summary(SLM)

# Missing Values in dataset datasetset
# Total number of missing values in dataset datasetset
sum(is.na(dataset))  
# Missing values per column in dataset datasetset
colSums(is.na(dataset))  

datas <- dataset  # Create a copy of the dataset

# For each column with numeric values, replace NAs with the column mean
datas[] <- lapply(datas, function(x) {
  if (is.numeric(x)) {
    replace(x, is.na(x), mean(x, na.rm = TRUE))
  } else {
    x  # Leave non-numeric columns unchanged
  }
})
sum(is.na(datas))
datas
# Duplicate rows in dataset 

# Shows duplicate rows in dataset
duplicated_dataset <- dataset[duplicated(dataset), ]  
duplicated_dataset
# Number of duplicate rows in dataset datasetset
sum(duplicated(dataset)) 

#OUTLIERS DETECTIONS
# Function to detect outliers using IQR method
find_outliers <- function(dataset) {
  Q1 <- quantile(dataset, 0.25)
  Q3 <- quantile(dataset, 0.75)
  IQR <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  return(dataset[dataset < lower_bound | dataset > upper_bound])
}
outliers_Age <- find_outliers(iris$Sepal.Length)
outliers_food <- find_outliers(iris$Sepal.Width)
outliers_stationary <- find_outliers(iris$Petal.Length)
outliers_transport <- find_outliers(iris$Petal.Width)
outliers_Internet <- find_outliers(datas$Internet)
outliers_Entertainment <-find_outliers(datas$Entertainment)
outliers_Personal_goods <- find_outliers(datas$Personal_goods)
outliers_Clothing <- find_outliers(datas$Clothing)
outliers_Montly_expenditure <- find_outliers(datas$Montly_expenditure)

length(outliers_Age)
length(outliers_food)
length(outliers_stationary)
length(outliers_transport)
length(outliers_Internet)
length(outliers_Entertainment)
length(outliers_Personal_goods)
length(outliers_Clothing)
length(outliers_Montly_expenditure)

#CORRELATION
cor(datas[, 1:9])

library(tidyr)
library(ggplot2)

#BOXPLOTS
# Reshaping the data to long format for boxplot creation
data_long <- gather(datas, key = "Variable", value = "Value", -Age)

ggplot(data_long, aes(x = Variable, y = Value, fill = Variable)) +
  geom_boxplot() +
  scale_fill_brewer(palette = "Set3") +  # Change color palette
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Boxplots of Variables", x = "Variable", y = "Value") +
  theme(legend.title = element_blank(),  # Remove the title of the legend
        legend.position = "right")  

#SCATTER PLOTS
library(GGally)
# Create scatter plot matrix (pair plot)
ggpairs(datas)

#MULTIPLE LINEAR REGRESSION MODEL
MLM <- lm(Montly_expenditure ~ Food_expense + Stationary + Transportation + Internet + Entertainment + Personal_goods + Clothing,data=datas)
summary(MLM)
#COEFFICIENT OF DETERMINATION
r_squared <- summary(MLM)$r.squared
print(r_squared)
