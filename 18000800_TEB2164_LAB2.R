usedcars <- read.csv("usedcars.csv", stringsAsFactors = FALSE, header = TRUE )

usedcars

str(usedcars)

summary(usedcars$price)

summary(usedcars[c("price","mileage", "year")])

mean(c(36000, 44000, 56000))

median(c(36000,44000,56000))

range(usedcars$price)

diff(range(usedcars$price))

diff(c(10,40))

IQR(usedcars$price)

quantile(usedcars$price)

quantile(usedcars$price, seq(from = 0, to = 1, by = 0.20))

boxplot(usedcars$price, main="Boxplot of Used Car Prices", ylab="Price (RM)")

boxplot(usedcars$mileage, main="Boxplot of Used Car Mileage", ylab="Miles (mi.)")

hist(usedcars$price, main = "Histogram of Used Car Prices", xlab = "Price (RM)")

hist(usedcars$mileage, main = "Histogram of Used Car Mileage", xlab = "Miles (mi.)")

plot(x = usedcars$mileage, y = usedcars$price, main = "Scatterplot (Price x Mileage)", xlab = "Used Car Miles (mi.)", ylab = "Used Car Price (RM)")
