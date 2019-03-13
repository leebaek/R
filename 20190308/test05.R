myAdd2 <- function(a=0,b=0){
  c <- a + b
  return(c)
}

r <- myAdd2(1,2)
print(r)

r2 <- myAdd2()
print(r2)

r3 <- myAdd2(2,2)
print(r3)

r4 <- myAdd2(a=1)
print(r4)

tmp_v_sum <- function(myv){
  sum <- 0
  for(i in myv){
    sum <- sum + i
    print(sum)
  }
  #return(sum)
  sum
}
tmp_v = c(1,2,3,4)

r5 <- tmp_v_sum(tmp_v)
r5

# 다음 그림을 출력하시오.
#
##
###
####
#####
#n <- 5
displayfunc <- function(n){
  for(i in 1:n){
    #print(i)
    print(paste(rep("#", i), collapse = ""))
  }
}
displayfunc(5)

# apply -> matrix
# apply(X, margin, func)
m_data <- matrix(c(1,2,3,4,5,6,7,8,9),
                 nrow = 3, ncol = 3)
m_data
apply(m_data, 1, sum) # margin = 1 -> row / 2 -> col
apply(m_data, 2, mean)

# lapply : 결과가 list형태로 나타남
# lapply(X, func)
tmp_data <- c("a","b","c","d")
lapply(tmp_data, toupper) # toupper -> 대문자로 변환

tmp_data2 <- list(a = 1:10, b = 1:20) # a, b는 그냥 타이틀 정보
tmp_data2
lapply(tmp_data2, mean)

# sapply : 결과가 Matrix형태로 나타남
# sapply(X, func)
sapply(tmp_data2, mean)

testFunc <- function(x){ # 임의의 함수를 만들어서 정의 할 수 있다.
  (min(x) + max(x)) / 2
}

tmp_data4 <- sapply(tmp_data3, testFunc)
tmp_data4

# mapply : 결과가 vector형태로 나타남
# mapply(func, X, Y, ...)
tmp_data3 <- list(a=1:10,b=1:20)
tmp_data4 <- list(a=2:10,b=2:20)
mapply(sum, tmp_data3, tmp_data4)

tmp_data3 <- list(a=1:10,b=1:20)
tmp_data3

# tapply
head(warpbreaks)
str(warpbreaks)
View(warpbreaks)

with(warpbreaks, tapply(breaks, list(wool, tension),mean))

data(iris)
View(iris)
tapply(iris$Sepal.Width, iris$Species, mean) # groupby하여 평균값















