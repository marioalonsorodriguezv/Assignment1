library(dplyr)
library(ggplot2)

data()
data(diamonds)
? diamonds
names(diamonds)

hist(diamonds$price)

hist(diamonds$price,
     main = 'Diamonds at Different Price Levels',
     xlab = 'The price of the diamonds')