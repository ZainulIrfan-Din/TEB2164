player_name <- c("Jason Williams", "Ray Allen", "Aomine Daiki", "Hanamichi Sakuragi", "Murasakibara")
player_name
play_pos <- factor (c("PG", "SG", "SF", "PF", "C"), levels = c("PG", "SG", "SF", "PF", "C"), ordered = TRUE)
numbers <- c(55, 20, 5, 10, 9)
age <- c(44, 45, 17, 16, 16)
rank <- factor (c(1, 2, 3, 5, 4), levels = c(1,2,3,4,5), ordered = TRUE)
tour_level <- factor(c("Country", "Country", "State", "District", "State"), levels = c("District", "State", "Country"), ordered = TRUE)
gender <- factor(c("MALE", "MALE", "MALE", "MALE", "FEMALE"))

players1 <- list(player_name = player_name[1], gender = gender[1], numbers = numbers[1], play_pos = play_pos[1], age = age[1], rank = rank[1], tour_level = tour_level[1])
players2 <- list(player_name = player_name[2], gender = gender[1], numbers = numbers[2], play_pos = play_pos[2], age = age[2], rank = rank[2], tour_level = tour_level[2])
players2 <- list(player_name = player_name[2], gender = gender[2], numbers = numbers[2], play_pos = play_pos[2], age = age[2], rank = rank[2], tour_level = tour_level[2])
players3 <- list(player_name = player_name[3], gender = gender[3], numbers = numbers[3], play_pos = play_pos[3], age = age[3], rank = rank[3], tour_level = tour_level[3])
players4 <- list(player_name = player_name[4], gender = gender[4], numbers = numbers[4], play_pos = play_pos[4], age = age[4], rank = rank[4], tour_level = tour_level[4])
players5 <- list(player_name = player_name[5], gender = gender[5], numbers = numbers[5], play_pos = play_pos[5], age = age[5], rank = rank[5], tour_level = tour_level[5])

pl_data <- data.frame(player_name, gender, age, play_pos, numbers, rank, tour_level, stringsAsFactors = FALSE)

pl_data

getwd()

write.csv(pl_data, file = "TEB2164_18000800_LAB1.csv", row.names = FALSE)

save(pl_data, file = "savelab1.RData")

data_znul <- read.csv("TEB2164_18000800_LAB1.csv", stringsAsFactors = FALSE, header = TRUE )


data_znul