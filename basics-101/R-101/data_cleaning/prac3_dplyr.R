library(dplyr)

# Task 1
data(mtcars)
head(mtcars, 5)

mtcars1 <- select(mtcars, 1:6)
mtcars1 <- mutate(mtcars1, cars=row.names(mtcars1))
head(mtcars1, 5)

mtcars1_filter <- filter(mtcars1, mpg>20 & cyl==6)
head(mtcars1_filter, 5)

# Task 2
# Sort by cyl asc and mpg desc
mtcars1.sorted <- arrange(mtcars1_filter, cyl, desc(mpg))
head(mtcars1.sorted, 10)

# Task 3
mt_select <- select(mtcars, mpg, hp)
head(mt_select, 5)

# Task 4
mt_newcols <- mutate(mtcars1, mpg2 = mpg * mpg, disp2 = disp * disp)
head(mt_newcols, 5)

# Task 5
summarise(mtcars, mean_mpg = mean(mpg), max_mpg = max(mpg), quant25mpg = quantile(mpg, 0.25))

