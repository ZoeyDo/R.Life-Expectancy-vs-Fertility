# R.Life-Expectancy-vs-Fertility

### This project is to produce a scatterplot (using qplot) depicting Life Expectancy (y-axis) and Fertility Rate (x-axis) statistics by Country. The scatterplot is also categorized by Countries' Regions.

_Files provides (in "Important Data" folder)_
1. A CSV file containing 5 rows: Country Name, Country Code, Region, Year, Fertility Rate.
2. An R file containing 3 vectors: Country_Code, Life_Expectancy_At_Birth_1960, Life_Expectancy_At_Birth_2013

> [!NOTE]
> - This project is a homework from a course on Udemy: R Programming A-Z™: R For Data Science With Real Exercises!
> - All data (except for the coding) is published and used freely (according to this course's instructor).

## Explanation

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



