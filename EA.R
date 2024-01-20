

iris <- read.csv("iris_dataset.csv", stringsAsFactors = FALSE, header = TRUE )

col2row10 <- iris[10,2]

col2row10

col1all <- iris[,1, drop = FALSE]
col1all

boxplot(iris$sepal_length, 
        main="Boxplot of Iris Sepal Length", 
        ylab="Length (CM)")


library(boot)

r_squared <- function(formula, data, indices) {
  val <- data[indices,] 
  fit <- lm(formula, data=val)
  return(summary(fit)$r.square)
} 

EAresample <- boot(data = EA, statistic = r_squared, R = 500, 
    formula = Que.2 ~ Que.1 + Que.3 + Que.4)

boot.ci(EAresample, type="norm") 

plot(EAresample)

cor(EA[c("Que.1", "Que.2", "Que.3", "Que.4")])

EA <- read.csv("EA.csv", stringsAsFactors = FALSE, header = TRUE )

EA_model <- lm(Que.2 ~ Que.1 + Que.3 + Que.4, data = EA)
EA_model
summary(EA_model)

EA$Que.2 ~ EA$Que.1*EA$Que.3*EA$Que.4
EA$Que.2 ~ EA$Que.1 + EA$Que.3 + EA$Que.4 + EA$Que.1:EA$Que.3:EA$Que.4yes

new_EA <- lm(Que.2 ~ Que.1 + Que.3 + Que.4 + 
               EA$Que.1*EA$Que.3*EA$Que.4, data = EA)
new_EA
summary(new_EA)

