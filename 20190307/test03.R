myData <- "안녕하세요. 방가워요."
myData

# Vector 객체
# Logical
v1 <- TRUE # FALSE
print(class(v1))
# Numeric
v2 <- 12.5
print(class(v2))
# Integer
v3 <- 2L
print(class(v3))
# Complex
v4 <- 2 + 3i
print(class(v4))
# Charactor
v5 <- "HI"
print(class(v5))
# Raw
v6 <- charToRaw("Test")
print(class(v6))

# R-object = vectors
# R은 C와 java와 같은 프로그래밍 언어와
# 달리 기본 데이터 형으로 선언되지 않음

# 변수는 R객체로 정의되고 R객체의 
# 데이터 유형은 변수의 데이터 유형이 된다.

# 데이터 타입 
# Vectors
# Lists
# Matrices
# Arrays
# Factors
# Data Frame

# Vector
apple <- c('red', 'yellow', 'green')
class(apple)
a <- c(1,2,3,4)
class(a)

a1 <- "test"
a2 <- 2L

# a = 1 -> integer
# a <- c(1) vector object
# a <- c(1,2,3)
# a <- c('1', '2', '3')

# vectors
a <- c(1,2,3,4)
class(a)

list1 <- list(c(1,2,3),c(4,5,6), sin)
list1
list2 <- list(1,2)
list2

# matrices
m <- matrix(c('a','a','b','c','a','a'), 
            nrow = 2, 
            ncol = 3)
m

# arrays
arr <- array(c('yellow', 'red'), dim = c(3,3,2))
arr

# factors
apple_colors <- c('green', 
                  'yellow', 
                  'red',
                  'red',
                  'green',
                  'green',
                  'red')
apple_colors
factor_apple <- factor(apple_colors)
print(factor_apple)
print(nlevels(factor_apple))

# Data Frames
test_data <- data.frame(
  gender = c('Male', 'Female', 'Male'),
  height = c(170, 165, 180),
  weight = c(80, 46, 78),
  age = c(40, 35, 25)
)
test_data




