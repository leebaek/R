# Strings
data <- 'test'
data
data2 <- "test"
data2
data3 <- "test"
data3

rm(list=ls())
# paste
data1 <- "Hello"
data2 <- "good"
data3 <- "Goodbye"
data4 <- paste(data1, data2, data3)
data4
data5 <- paste(data1, data2, data3, sep = '-')
data5

# format
format(120.122222, digits = 4)
format(120.2200000, scientific = TRUE)
format(14.7, width = 10)
format("Test", width = 10, justify = "c")
format("Test", width = 10, justify = "r")
format("Test", width = 10, justify = "l")
data6 <- "This is mine, good morning"
substring(data6, 2 ,4)

# Vectors
data7 <- "343" # Atomic Vector
data8 <- 1
data9 <- 20L

# Multiple Vector
data10 <- 1:10
data10
data11 <- seq(5,9,by =0.5) # 5~9 / 0.5
data11
data12 <- c('apple', 1000, TRUE)
data12
class(data12)
str(data12)

data13 <- c(1,2,3,4,5)
data13
data13[2]

data14 <- c('sun','mon','tue','wed','thu','fri','sat')
data14[c(2,3)]
data14[3:5]
data14[-2]
data14[c(-1, -4)]
data14[-2:-5]

data15 <- data14[c(TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE)]
data15

data16 <- c(1,2,3)
data17 <- c(3,4,5)
data16+data17

data18 <- c(1,2,3,4)
data19 <- c(1,2) # 1,2,1,2
data18 + data19

# Sort
data20 <- c(1,2,3,4,10,9,8,7,6,5)
sort(data20)
sort.result <- sort(data20)
sort.result
sort.result1 = sort(data20, decreasing = TRUE)
sort.result1














