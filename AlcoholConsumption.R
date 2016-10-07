title: "Alcohol Consumption"
author: "Raju Adhikari & Mario Alonso Rodriguez"
date: "October 6th, 2016"

### First, let's load the packages that are needed
library(dplyr)

### Load the raw data from fivethirtyeight's Github
Drinks <- read.csv('https://raw.githubusercontent.com/fivethirtyeight/data/master/alcohol-consumption/drinks.csv')

### A simple summary of descriptive statistics of all the dataset 
summary(Drinks)

### The means of all the variables show the average world consumption of each drink
for (i in 1:length(names(Drinks))) {
  Drinks[, i] %>%
    mean() %>%
    round(digits = 1) %>%
    paste(names(Drinks)[i], ., '\n') %>%  cat() }

### The standard deviation of all the variables shows how dispersed is the data
for (i in 1:length(names(Drinks))) {
  Drinks[, i] %>%
    sd() %>%
    round(digits = 1) %>%
    paste(names(Drinks)[i], ., '\n') %>%  cat() }

### Distribution of beer consumption
hist(Drinks$beer_servings,
     main = 'Beer consumption',
     xlab = 'Number of bottles of beer consumed in 2010',
     border = 'blue')

### Distribution of spirit consumption
hist(Drinks$spirit_servings,
     main = 'Spirit consumption',
     xlab = 'Number of spirit shots consumed in 2010', 
     border = 'blue')

### Distribution of wine consumption
hist(Drinks$wine_servings,
     main = 'Wine consumption',
     xlab = 'Number of wine glasses consumed in 2010',
     border = 'blue')

## Remove cases with zeros
Drinks[Drinks==0] <- NA
Drinks <- na.omit(Drinks)

## Transformation of beer consumption
log(Drinks$beer_servings) %>% hist(main = "Beer consumption in 2010", border = 'blue')

## Transformation of spirits consumption
log(Drinks$spirit_servings) %>% hist(main = "Spirit consumption in 2010", border = 'blue')

## Transformation of spirits consumption
log(Drinks$wine_servings) %>% hist(main = "Wine consumption in 2010", border = 'blue')