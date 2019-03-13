city <- c('seoul', 'japan', 'newyork', 'beijing')
state <- c('a', 'b', 'c', 'd')
address <- c(1111,2222,3333,4444)
home <- c(101,202,303,404)
tmp_data <- cbind(city, state, address, home) # cbind
tmp_data
class(tmp_data)
df1 <- data.frame(tmp_data)
class(df1)

tmp_data2 <- data.frame(
city = c('seoul', 'japan', 'newyork', 'beijing'),
state = c('a', 'b', 'c', 'd'),
address = c(1111,2222,3333,4444),
home = c(101,202,303,404),
stringsAsFactors = FALSE)
tmp_data2
class(tmp_data2)
rbind(tmp_data, tmp_data2)

colnames(tmp_data2)
rownames(tmp_data2)
dimnames(tmp_data2)
dim(tmp_data2)
str(tmp_data2)
tmp_data2$state <- factor(tmp_data2$state)
str(tmp_data2)

# Function
seq(1,3)
mean(1:10)
sum(1:10)

myfunc <- function(a) {
  print(a)
}
myfunc2 <- function(a) {
  sum <- 0
  for(i in 1:a){
    sum = sum + i
  }
  print(sum)
}

myfunc2(100)

myAdd <- function(a, b) {
  c <- a + b
  print(c)
}
myAdd(1,2)

myAdd2 <- function(){
  c <- 1 + 2
  print(c)
}
myAdd2()

myAdd3 <- function(a = 1, b = 1){
  c <- a + b
  print(c)
}
myAdd3(a=2, b=3)
myAdd3(3,3)






