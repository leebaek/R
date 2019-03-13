english <- c(80,85,60,75)
math <- c(65,80,95,75)
class <- c(1,2,1,2)

df <- data.frame(english, math, class)
df
mean(df$english)
mean(df$math)
mean(df$class)

# fruit price qty
# 사과 2000  20
# 배   1500  30
# 딸기 2000  40
# 수박 9000  20

fruit <- c("apple", "pear", "strawberry", "watermelon")
price <- c(2000, 1500, 2000, 9000)
qty <- c(20, 30, 40, 20)
df2 <- data.frame(fruit, price, qty)
df2

mean(df2$price)
mean(df2$qty)
median(df2$price)
summary(df2)
write.csv(df2, file = "test_data.csv") # write기능 현재 경로에 csv파일로 저장
save(df2, file = "df2_data.rda") # rda로 저장
load("df2_data.rda")


df3 <- read.csv("20190308/csv_exam.csv", stringsAsFactors = F)
df3
class(df3)
str(df3)
# head() : 상위 6개 default
head(df3)
head(df3, 10)

# tail() : 하위 5개 default
tail(df3)
tail(df3, 10)

# View()
View(df3)

# dim()
dim(df3)

# str()
str(df3)

# summary()
summary(df3)

install.packages("dplyr")
library(dplyr)
library(ggplot2)
mpg
class(mpg)
df3 <- as.data.frame(mpg)
class(df3)
df3$manufacturer
head(df3[,1:3])
head(df3,3)
df3$sum_test <- df3$hwy
head(df3)
colnames(df3)
qplot(df3$sum_test)
hist(df3$sum_test)











