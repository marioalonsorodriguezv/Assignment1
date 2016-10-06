#Loading the packages necessary for this assignemnt###
library(dplyr)
library(ggplot2)

#Listing the in-built dataset from R###
data()

#Loading the dataset diamonds and obtaining its description###
data(diamonds)
? diamonds

#Listing all the variables that the dataset contains###
names(diamonds)

#Getting a descriptive summary of the variables in the dataset###
summary (diamonds)

#A histogram of price variable shows the number of diamonds at different price level###
hist(diamonds$price)

hist(diamonds$price,
     main = 'Diamonds at Different Price Levels',
     xlab = 'The price of the diamonds')

#Finding the mean, one of the main measures of central tendency###
mean(diamonds$price, na.rm = TRUE)
mean(diamonds$depth, na.rm = TRUE)
mean(diamonds$carat, na.rm = TRUE)
mean(diamonds$table, na.rm = TRUE)
mean(diamonds$x, na.rm = TRUE)
mean(diamonds$y, na.rm = TRUE)
mean(diamonds$z, na.rm = TRUE)

#Finding the standard deviation for price variable###
sd(diamonds$price)

#Doing a Crosstab to show how color and cut are related###
table(diamonds$cut, diamonds$color)

#It simply shows that they are roughly equally distributed across cut. 
