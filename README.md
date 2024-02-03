# R.Life-Expectancy-vs-Fertility

### This project is to produce a scatterplot (using qplot) depicting Life Expectancy (y-axis) and Fertility Rate (x-axis) statistics by Country. The scatterplot is also categorized by Countries' Regions.

_Files provides (in "Important Data" folder)_
1. A CSV file containing 5 rows: Country Name, Country Code, Region, Year, Fertility Rate.
2. An R file containing 3 vectors: Country_Code, Life_Expectancy_At_Birth_1960, Life_Expectancy_At_Birth_2013

> [!NOTE]
> - This project is a homework from a course on Udemy: R Programming A-Z™: R For Data Science With Real Exercises!
> - All data (except for the coding) is published and used freely (according to this course's instructor).

## Explanation

### Working with data

**1. Importing the CSV file**
```r
stats <- read.csv(file.choose())

stats
head(stats)
```

**2. Splitting data**

Since there are two seperated years which are 1960 and 2013, split the big data frame into two smaller data frames (stats_1960, stats_2013).

```r
stats_1960 <- stats[stats$Year == 1960,]
stats_2013 <- stats[stats$Year == 2013,]

head(stats_1960)
head(stats_2013)
```

**3. Creating additional data frames**

Create a data frame (add_1960), as a bridge to merge with data frame "stats_1960" with 

```r
add_1960 <- data.frame(Code = Country_Code, Life.Exp = Life_Expectancy_At_Birth_1960)
head(add_1960, n = 10)

add_2013 <- data.frame(Code = Country_Code, Life.Exp = Life_Expectancy_At_Birth_2013)
head(add_2013, n = 10)
```

### Visualization

**1. Year 1960**
```r
qplot(data = merged_1960, x = Fertility.Rate, y = Life.Exp,
       colour = Region,
       size = I(5),
       alpha = I(0.7),
       shape = I(20),
       main = "Life Expectancy vs Fertility (1960)")
```
![Imgur](https://i.imgur.com/QH621Ga.png)

**2. Year 2013**
```r
qplot(data = merged_2013, x = Fertility.Rate, y = Life.Exp,
      colour = Region,
      size = I(5),
      alpha = I(0.8),
      shape = I(18),
      main = "Life Expectancy vs Fertility (2013)")
```
![Imgur](https://i.imgur.com/NaPEUWN.png)



