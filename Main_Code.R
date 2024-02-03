#1. Import the csv file
stats <- read.csv(file.choose())

stats
head(stats)

#2. Split the data frames into 2 -> 1960 vs 2013
stats_1960 <- stats[stats$Year == 1960,]
stats_2013 <- stats[stats$Year == 2013,]

head(stats_1960)
head(stats_2013)

#3. Create additional data frames
add_1960 <- data.frame(Code = Country_Code, Life.Exp = Life_Expectancy_At_Birth_1960)
head(add_1960, n = 10)

add_2013 <- data.frame(Code = Country_Code, Life.Exp = Life_Expectancy_At_Birth_2013)
head(add_2013, n = 10)

#4. Merge the pairs of dataframes
merged_1960 <- merge(stats_1960, add_1960, by.x = "Country.Code", by.y = "Code")
head(merged_1960)

merged_2013 <- merge(stats_2013, add_2013, by.x = "Country.Code", by.y = "Code")
head(merged_2013)

#5. Visualization
qplot(data = merged_1960, x = Fertility.Rate, y = Life.Exp,
       colour = Region,
       size = I(5),
       alpha = I(0.2),
       shape = I(18),
       main = "Life Expectancy vs Fertility (1960)")

qplot(data = merged_2013, x = Fertility.Rate, y = Life.Exp,
      colour = Region,
      size = I(5),
      alpha = I(0.8),
      shape = I(18),
      main = "Life Expectancy vs Fertility (2013)")
