
hum <- read.csv("human.csv", stringsAsFactors = FALSE, header = TRUE ) #Load the csv file

#Data Pre-processing
na_value <- hum[any(is.na(hum)),] #Data checking for any NA data
nrow(na_value)

remove(na_value)

hum$Gender <- as.factor(hum$Gender) #factorize gender

write.csv(hum, file = "human_new.csv", row.names = TRUE) #Export into new csv file

colSums(is.na(hum)) #Recheck any NA value in new csv file

#Box Plots
boxplot(hum$Height, main="Boxplot of Height", ylab="Height (CM)", col="red")
boxplot(hum$Weight, main="Boxplot of Weight", ylab="Weight", col="blue")
boxplot(hum$Index, main="Boxplot of Index", ylab="Index", col="purple")

#Scatter Plots
plot(x = hum$Height, y = hum$Weight, main = "Scatterplot (Height x Weight)", xlab = "Height", ylab = "Weight", col="dark green")

#Single Line Plots
plot(x = hum$Height, main = "Single Line Plot of Human Height", pch = 19, type = 'l', col = "red")
plot(x = hum$Weight,main = "Single Line Plot of Human Weight", pch = 19, type = 'l', col = "blue")
plot(x = hum$Index, main = "Single Line Plot of Human Index", pch = 19, type = 'l', col = "purple")


#Multiple Line Plots
plot(x = hum$Height, main = "Multiple Line Plot of Human Height and Weight", pch = 19, type = 'l', col="red", xlab = "Height", ylab = "Weight")
lines(hum$Weight, type='l', col= "blue")
legend("topleft", legend=c("Height", "Weight"), col=c("red", "blue"), lty = 1:1, cex=0.8)

