#Single Featured
library(readr)
file <- "pop_profit.txt"
data <- read.table(file, header = TRUE, sep=",")
x <- data$population
y <- data$profit
plot(x,y)
single_regression <- lm(formula = y ~ x   , data = data)
summary(single_regression)
abline(single_regression, col = "red")

#Multi Featured
library(readr)
file <- "house_price.txt"
data <- read.table(file, header = TRUE, sep= ",")
head(data)
sum(data$bedrooms)

x1 <- data$sqr.foot
x2 <- data$bedrooms
y <- data$price

multifeatured_regression = lm(formula = y ~ x1 + x2, data = data)
summary(multifeatured_regression)
