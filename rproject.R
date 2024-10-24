data <- read.csv("C:/Users/ankus/Downloads/archive/tested.csv")

head(data)

str(data)

summary(data)

dim(data)

colnames(data)

colSums(is.na(data))

par(mfrow = c(2, 3))     
hist_data_age <- hist(data$Age, main = "Distribution of Age", xlab = "Age", breaks = 20)
hist_data_age

hist_data_Fare <- hist(data$Fare, main = "Distribution of Fare", xlab = "Fare", breaks = 20)
hist_data_Fare 

hist_data_Pclass <- hist(data$Pclass, main = "Distribution of Pclass", xlab = "Pclass", breaks = 3)
hist_data_Pclass

par(mfrow = c(1, 1))


par(mfrow = c(2, 3))

box_data_Age <- boxplot(data$Age, main = "Boxplot of Age")
box_data_Age

box_data_Fare <- boxplot(data$Fare, main = "Boxplot of Fare")
box_data_Fare 

box_data_Pclass <- boxplot(data$Pclass, main = "Boxplot of Pclass")
box_data_Pclass

par(mfrow = c(1, 1))


par(mfrow = c(2, 3))
scatter_Age_Fare <- plot(data$Age, data$Fare, main = "Scatter plot of Age vs Fare", xlab = "Age", ylab = "Fare")
print(summary(data[c('Age', 'Fare')]))


scatter_Age_Pclass <- plot(data$Age, data$Pclass, main = "Scatter plot of Age vs Pclass", xlab = "Age", ylab = "Pclass")
print(summary(data[c('Age', 'Pclass')]))

scatter_Fare_Pclass <- plot(data$Fare, data$Pclass, main = "Scatter plot of Fare vs Pclass", xlab = "Fare", ylab = "Pclass")
print(summary(data[c('Fare', 'Pclass')]))


par(mfrow = c(1, 1))