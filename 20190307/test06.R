var1 <- c(0, 1 , 2, 3)
var2 <- c('Hello', 'R Programming')
c(TRUE, 1) -> var3

print(var1)
cat('var1 is', var1, "\n")

print(ls())


# R Data Types
# Logical, Numeric, Integeger, Complex
# Character

data1 <- "Hello"
class(data1)
str(data1)

data2 <- 100
class(data2)

data3 <- 100L
class(data3)

data4 <- FALSE
class(data4)

# Data Structures
# Vectors, Lists, 
# Matrices, Arrays, Data Frames

data5 <- c(1)
data5
class(data5)
data6 <- c(data5, 10)
data6
data7 <- c(TRUE, FALSE, TRUE)
data7
data8 <- c(1, 'Tes', TRUE)
data8
data9 <- c(1, "test", 2)
data9
data10 <- c(1, 2, "3")
data10

data11 <- c(10, NA, 20, 30)
data11
data12 <- c(10, NA, 0.5, NA)
data12

1/0 # Infinity
0/0 # Not a Number

data13 <- "Hello R"
cat("Test Display \n", data13, "\n")

print(ls())
ls(pattern = "data1")
rm(pattern = "data1")
# 전체 변수 삭제
rm(list=ls())

# Arithmetric Operators
a <- c(1,2,3)
b <- c(4,5,6)
a+b
a-b
a*b
a/b
a%%b
a%/%b
a^b
# Relational Operators
a>b
a<b
a==b
a<=b
a!=b
# Logical Operators
x <- c(FALSE, TRUE)
y <- c(TRUE, TRUE)
x & y
x | y
!y

# ETC Operators
z <- 1:10
z

x1 <- 8
y1 <- 12
z1 <- 1:10
x1 %in% z1
y1 %in% z1

is.numeric(x1)

x2 <- "1"
x3 <- as.numeric(x2)
x3
class(x2)
class(x3)
x4 <-as.integer(x3)
x4
class(x4)
x5 <- 1:20
class(x5)

# func(...) return -> list
# x <- as.list(x5)

x6 <- as.list(x5)
x6





