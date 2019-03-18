# mpg
library(ggplot2)
class(mpg)
data <- as.data.frame(mpg)
class(data)
head(data)
tail(data)
summary(data)

colnames(data)
install.packages("dplyr")
library(dplyr)
colnames(data)
data <- rename(data, city = cty)
data <- rename(data, highway = hwy)
colnames(data)

# 통합연비를 구해서 히스토그램으로 출력하시오.
# (cty + hwy) / 2

colnames(data)
data$total <- (data$city + data$highway) / 2
data$total
library(ggplot2)
#qplot(data$total, binwidth=2, geom = "histogram")
hist(data$total)
mean(data$total)

# 20 >= pass, fail

data$check <- ifelse(data$total >= 20, "pass", "fail")
table(data$check)

qplot(data$check)

# 다음의 등급을 정의하여 빈도수를 출력하시오.
# 등급  total기준
#  A    30이상 ~ 40이하
#  B    20이상 ~ 30이하
#  C    10이상 ~ 20이하
#  D    0 ~ 10이하

library(ggplot2)
class(mpg)
data <- as.data.frame(mpg)
colnames(data)
data$total <- (data$cty + data$hwy) / 2
#data$total 
data$level <- ifelse(data$total >= 30 & data$total < 40,
       "A", 
       ifelse(data$total >= 20 & data$total < 30, 
              "B",
              ifelse(data$total >= 10 & data$total < 20,
                     "C", "D"
              )))

data$level
library(ggplot2)
qplot(data$level)

test <- function(total){
  level <- ""
  if(total >= 30 & total < 40) {
    level = "A"
  } else if(total >= 20 & total < 30){
    level = "B"
  } else if(total >= 10 & total < 20){
    level = "C"
  } else {
    level = "D"
  }
  return(total)
}

data$level <- test(data$total)

# midwest
str(midwest)
class(midwest)
data2 <- as.data.frame(midwest)
View(data2)

colnames(midwest)
asian <- (midwest$popasian / midwest$poptotal) * 100
asian
library(ggplot2)
qplot(asian)
hist(asian)













