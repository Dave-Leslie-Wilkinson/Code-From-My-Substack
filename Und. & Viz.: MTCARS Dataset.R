data()
class(mtcars)
head(mtcars)
tail(mtcars)
summary(mtcars)

cyl <- mtcars$cyl
hp <- mtcars$hp

plot(density(cyl))

plot (cyl, hp, pch=17, main = "Title", xlab = "Cylinder", ylab ="Horse Power", col = "green")

x <- lm(formula = hp~cyl, data=mtcars)
abline(x)
