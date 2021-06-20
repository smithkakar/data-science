library(stringr)

# Task 1
x <- "hello"
print(x)
x_new <- str_c(x, "world", sep=" ")
print(x_new)

# Task 2
# Word Frequency
X <- "hop a little, jump a little, eat a little, drive a little"
print(str_count(X, "little"))

# Task 3
Y <- "hop a little, jump a little"
print(str_locate(Y, "little"))
print(str_locate_all(Y, "little"))

# Task 4
print(str_detect(Y, 'z'))

# Task 5
Z <- 'TRUE NA TRUE NA NA NA FALSE'
print(str_extract(Z, 'NA'))
print(str_extract_all(Z, 'NA'))

# Task 6
print(str_length(Z))

# Task 7
Z.lower <- str_to_lower(Z)
print(Z.lower)
Z.upper <- str_to_upper(Z.lower)
print(Z.upper)

# Task 8
y <- c('alpha', 'gama', 'duo', 'uno', 'beta')
print(str_order(y))
print(str_sort(y))

# Task 9
print(str_pad(y, 8, "both", '%'))

# Task 10
z <- c(" A", " B", " C")
print(str_trim(z))

