""" 
gather() collapses multiple columns into two columns:
	• A key column that contains the former column names.
	• A value column that contains the former column cells.
spread() generates multiple columns from two columns:
	• Each unique value in the key column becomes a column name.
	• Each value in the value column becomes a cell in the new column.
spread() and gather() help you reshape the layout of your data to place variables in columns and observations in rows.
separate() and unite() help you split and combine cells to place a single, complete value in each cell.
"""

library(tidyr)
player <- c("Sachin Tendulkar", "Sourav Ganguly", "VVS Laxman", "Rahul Dravid")
Y2010 <- c(48.8, 40.22, 51.02, 53.34)
Y2011 <- c(53.7, 41.9, 50.8, 59.44)
Y2012 <- c(60.0, 52.39, 61.2, 61.44)
paverage.df <- data.frame(player, Y2010, Y2011, Y2012)
print(paverage.df)

# When column headers are values and not variables, 
# use gather() function to tidy the data.
pavg_gather <- gather(paverage.df, year, pavg, Y2010:Y2012)
print(pavg_gather)

# Convert back to original
rev_original <- spread(pavg_gather, year, pavg)
print(rev_original)

fname <- c("Martina", "Monica", "Stan", "Oscar")
lname <- c("Welch", "Sobers", "Griffith", "Williams")
DoB <- c("1-Oct-1980", "2-Nov-1982", "13-Dec-1979", "27-Jan-1988")
first.df <- data.frame(fname, lname, DoB)
print(first.df)

# For datasets that are messy due to single column holding multiple variables, 
# separate() function can be used.
separate(first.df, DoB, c('date', 'month', 'year'), sep='-')

unite(first.df, Name, fname, lname, sep=' ')

religion <- c("Agnositc", "Atheist", "Buddhist", "Catholic")
usd10k <- c(27, 12, 27, 418)
usd20to30k <- c(60, 37, 30, 732)
usd30to40k <- c(81, 52, 34, 670)
mydf1.df <- data.frame(religion, usd10k, usd20to30k, usd30to40k)
print(mydf1.df)

gather(mydf1.df, usd, value, usd10k:usd30to40k)

City <- c("Chennai", "Chennai", "Hyderabad", "Hyderabad")
Year <- c(2010, 2010, 2010, 2010)
Element <- c("MaxTemp", "MinTemp", "MaxTemp", "MinTemp")
Jan <- c(36, 24, 32, 22)
Feb <- c(37, 25, 34, 23)
Mar <- c(37.5, 27, 36, 25)
mydf2.df <- data.frame(City, Year, Element, Jan, Feb, Mar)
print(mydf2.df)

# When the variables are both at rows and columns, use gather() function 
# followed by spread() function.
mydf2.gather <- gather(mydf2.df, month, value, Jan:Mar)
print(mydf2.gather)

spread(mydf2.gather, Element, Year)