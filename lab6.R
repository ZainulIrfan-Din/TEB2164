library(psych)

ins <- read.csv("insurance.csv", stringsAsFactors = TRUE, header = TRUE )

ins

str(ins)

summary(ins$charges)

hist(ins$charges)

table(ins$region)

cor(ins[c("age", "bmi", "children", "charges")])

pairs(ins[c("age", "bmi", "children", "charges")])

pairs.panels(ins[c("age", "bmi", "children", "charges")])

ins_mod <- lm(charges ~ age + children + bmi + sex + smoker + region, data = ins)

ins_mod <- lm(charges ~ ., data = ins)

ins_mod

lm(formula = charges ~ ., data = ins)

summary(ins_mod)

ins$age2 <- ins$age^2

ins$bmi30 <- ifelse(ins$bmi >= 30, 1, 0)

ins_mod2 <- lm(charges ~ age + age2 + children + bmi + sex + bmi30*smoker + region, data = ins)

summary(ins_mod2)