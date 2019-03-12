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
# 전체 변수 삭ㅈ
rm(list=ls())













