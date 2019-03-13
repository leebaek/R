# Vector
data <- 1
class(data)
mode(data)
str(data)
data2 <- c(1,2,3)
data2
length(data2)
is.vector(data2)
data3 <- 1:10
data4 <- c('test',TRUE, 1)
data4
data5 <- seq(10, 100, by = 1)
length(data5)
data6 <- c('a','b','c')
names(data6) <- c('one', 'two', 'three')
data6
data6[1]
data6[c(1,2)]
data6[1:3]
data6[-1]
data6['one']
data6[c('one','two')]
# data6$one 
data6
data7 <- 1:10
mode(data7)
data8 <- as.character(data7)
class(data8)
#mode(data8)
is.character(data8)
data9 <- sort(data8, decreasing = FALSE)
data9
# class, str
data9

# paste
a <- 'test'
b <- 'is'
paste(a, b, sep = '-')
paste(a,b)
# list
list_data <- list(c(1,2,3))
list_data
list_data2 <- list(c(1:10, 1))
list_data2
list_data3 <- list(1,2,3)
list_data3

list_data4 <- list(10, c(1,2,3), TRUE, "Test")
list_data4
length(list_data4)
class(list_data4)
list_data4[1]
list_data4[1:2]
list_data4[1]
class(list_data4[1])
class(list_data4[[1]])
class(list_data4[2])
class(list_data4[[2]])
list_data4[[2]][1:2]
list_data4[[2]][c(1,3)]

list_data5 <- list(1:3,2,3)
list_data5
names(list_data5) <- c('one', 'two', 'three')
list_data5
class(list_data5)
class(list_data5$one)
class(list_data5[1])
class(list_data5[[1]])

list_data5[1] <- "test"
list_data5[2] <- NULL
list_data5
list_data5[5] <- "test2"
list_data5['one']
list_data5$one
# list to vector <-> vector to list
class(list_data5)
list_data6 <- unlist(list_data5)
class(list_data6)

