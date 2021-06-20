"""Lets do coding"""

# Levels of vector variable
x <- factor(c("yes", "no", "yes", "maybe"))
print(levels(x))

# String Date Conversion
s <- "25-12-2016"
d <- as.Date(s, format="%d-%m-%Y")
print(d)

# Add Vectors
V1 <- c(1, 2, 3, 4, 5)
V2 <- c(10, 20, 30, 40, 50)
print(V1 + V2)

# Matrices
V <- c(1:9)
M <- matrix(V, nrow=3, ncol=3, byrow=TRUE)
print(M * 2)

# Random Sampling and Data Type Conversion
v1 <- factor(floor((runif(10, min=0,max=101))))
print(v1)
v2 <- as.numeric(levels(v1))[v1]
print(v2)
print(v1 == v2)

# Random Numbers
V <- round(runif(10, 0, 1), 2)
print(V < 0.50)

# Handling NA
V <- c(1, 4, NA, 7, 9, NA, 2)
x <- V[!is.na(V)]
print(x[!(x %% 2 == 1)])

# Set Operations
A <- c(11:16)
B <- c(13:20)
print(setdiff(A, B))

# Descriptive Statistics
A <- c(11:17)
median(A)

# Conditional Operations
Marks <- c(78, 85, 90)
ifelse(Marks>=80,"Above Average", "Average")

# Which Condition
M <- c(10:20)
condition <- M > 13 & M < 16
print(which(condition))
# Output: 5, 6

# For Loop
X <- c(80:100)
total <- c()
for (i in X) {
  if (i%%2 == 0) {
    total <- append(total, i)
  }
}
print(sum(total))

# Functions
computecube <- function(x) {
  c <- x^3
  return(c)
}
print(computecube(10))

# Hands-On

# Find Next Leap Year?
L <- as.Date('2018-01-01')
year <- as.numeric(format(L, '%Y'))
all_years <- year + 1:4
# print(all_years)
next_leap <- all_years[(all_years %% 4 == 0 & all_years %%100 != 0) | all_years %% 400 == 0]
print(next_leap)

# Variable Operations
L <- 100
LL <- 2
output <- (L^(1/2)) * LL
print(output)

# Factor and Levels
color <- factor(c("Red", "Green", "Blue"))
print(nlevels(color))

# Sequence of even numbers iterating twice
a<-rep(c(2,4,6,8,10), times=2)
print(a)

# Vector Operations
X <- c(1:5)
Y <- c(2, 4, 6, 8, 10)
print(X*Y)

# Matrix Operations
a <- c(2, 4, 6, 8, 0, 9)
MM <- matrix(a, nrow=2, ncol=3)
print(MM)

# String to Date
strDate <- "15081947"
as.Date(strDate, "%m/%d/%Y")

# POSIX Date
dates <- c(as.POSIXct("15Aug1947", format="%d%b%Y"),as.POSIXct("15Aug2018", format="%d%b%Y"))
print(difftime(dates[1], dates[2], units = "days"))
print(dates[1] - dates[2])

# Conditional Operators I
temp <- c(103, 100, 98)
ifelse(temp>100, "hot", "good")

# Conditional Operators II

toppers <- sample(c(80:100), 10)
if (all(toppers) > 90) {
  print("best class")
} else {
  print("needs improvement")
}

# Factorial with while loop
Nfact <- function(n) {
  fact <- 1
  if(n==0 | n==1) {
    fact <- 1
  } else {
    while(n >= 1) {
      fact <- fact * n
      n <- n-1
    }
  }
  return(fact)
}
factorial(6)

# Sum of first 20 whole numbers
temp <- c(1:20)
total <- 0
for (i in temp) {
  total <- append(total, i)
}
print(sum(total))

# Which()
scores <- c(98, 102, 120, 145, 175, 169, 118, 177, 101, 200)
condition <- scores %% 2 == 0
evenix <- which(condition, scores)
print(evenix)

# Str() using dataframe
emp <- data.frame(empno=11, name='Alex', age=32, dept='sales')
str(emp)

# User Defined Function
pyth = function(a, b) {
  c <- (a^2 + b^2)^(1/2)
  print(c)
}
pyth(3, 4)