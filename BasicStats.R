##Basic statistics (Descriptive Analytics)
## Author: Jesus Carmona
## add this comment

install.packages("ggplot2")
library(ggplot2)

## we will work with the cars data set that is already loaded into R
? cars

## analyze the structure of the cars data set
str(cars)
head(cars)

###### Individual statistics functions  ############
## mean
mean(cars$dist)

## variance
var(cars$dist)

## standard deviation
sd(cars$dist)

## different statistics - summary
summary(cars$dist)
summary(cars)

## Correlation

ggplot(cars, aes(speed, dist)) + geom_point()

cor.test(cars$speed, cars$dis)

ggplot(cars, aes(speed, dist)) + geom_point() + geom_smooth(method="lm", col="red")

## Linear regression

## normalized data for the model to run
## speedZ <- scale(cars$speed, center=TRUE, scale = FALSE)

lm <- lm(dist ~ speed, data = cars)
summary(lm)

ggplot(cars, aes(speed, dist)) + geom_point() + geom_smooth(method="lm", col="red")

