# Task 1
# Imputation using Mean and Median
x <- c(19, 13, NA, 17, 5, 16, NA, 20, 55, 22, 33, 14, 25, NA, 29, 56)
print(x)

x1 <- x
x1[is.na(x1)] = round(mean(x1[!is.na(x1)]))
print(x1)

x2 <- x
x2[is.na(x2)] = round(median(x2[!is.na(x2)], na.rm=TRUE))
print(x2)

# Task 2
Outlierset <- c(19, 13, 29, 17, 5, 16, 18, 20, 55, 22, 33, 14, 25, 10, 29, 56)
print(summary(Outlierset))

Cleanset <- Outlierset[Outlierset<=36]
print(Cleanset)

