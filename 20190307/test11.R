data <- c('east','west','east','west','north','east')
data
class(data)
is.factor(data) # FALSE

f_data <- factor(data)
f_data
is.factor(f_data) # TRUE

# DataFrame
height <- c(160,170,180,173)
weight <- c(60,70,80,73)
gender <- c('male','female','male','female')
df <- data.frame(height, weight, gender, 
                 stringsAsFactors = FALSE)
class(df)
is.factor(df$gender)
df$gender

# Factor Levels
f_data2 <- gl(3,4,labels = c('seoul','japan','china')) # 3개의 항목을 4번씩 반복하라
f_data2

df2 <- read.csv("seoul.csv", fileEncoding = 'utf-8',
                header = TRUE, sep = ',', stringsAsFactors = FALSE)
df2

emp_data <- data.frame(
  emp_id = c(1:3),
  emp_name = c('홍길동','이순신','강감찬'),
  salary = c(100,200,300),
  start_data = c('2018-10-10','2018-10-12','2018-10-12'),
  stringsAsFactors = FALSE)

summary(emp_data)





















