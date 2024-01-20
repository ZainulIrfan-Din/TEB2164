library(arules)

gro <- read.transactions("groceries.csv", sep = "," )

gro

summary(gro)

inspect(gro[1:5])

itemFrequency(gro[, 1:3])

itemFrequencyPlot(gro, support = 0.1)

itemFrequencyPlot(gro, topN = 20)

image(gro[1:5])

image(sample(gro, 100))

apriori(gro)

grorules <- apriori(gro, parameter = list(support = 0.006, confidence = 0.25, minlen = 2))

grorules

summary(grorules)
  
inspect(grorules[1:3])

inspect(sort(grorules, by = "lift")[1:5])

berryrules <- subset(grorules, items %in% "berries")

inspect(berryrules)

write(grorules, file = "grorules.csv", sep = ",", quote = TRUE, row.names = FALSE)

grorules_df <- as(grorules, "data.frame")

str(grorules_df)