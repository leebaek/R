# cancer.csv
# 연령대별로 암의 발생률을 구하고 그래프로 출력하시오.
# 10s, 20s, 30s, 40s, 50s, 60s, 70s, 80s, 90s, 100s
#df <- read.csv()
# 0 ~ 10 : 10s
# 10 ~ 20 : 20s
tmp_data2 <- read.csv("cancer.csv", na.strings = "NA")
View(tmp_data2)
str(tmp_data2$age)
tmp_data <- data.frame(
  age <- c(76, 75, 81)
)
tmp_data$age
# cut function
#(1:11) * 10
cut(tmp_data$age, breaks = (1:11) * 10)
# 10s : 11 ~ 20
# 20s : 21 ~ 30 
# 30s : 31 ~ 30

tmp_data <- data.frame(
  age <- c(76, 75, 81, 76)
)
table(tmp_data)

checkAge <- function(age){
  #print(age)
  if(age > 0 & age < 10) {
    age = "10s" # 10s
  } else if(age >= 10 & age < 20) {
    age = "10s" # 10s
  } else if(age <= 20 & age < 30) {
    age = "20s" # 20s
  } else if(age <= 30 & age < 40) {
    age = "30s" # 30s
  } else if(age <= 40 & age < 50) {
    age = "40s" # 40s
  } else if(age <= 50 & age < 60) {
    age = "50s" # 50s
  } else if(age <= 60 & age < 70) {
    age = "60s" # 60s
  } else if(age <= 70 & age < 80) {
    age = "70s" # 70s
  } else if(age <= 80 & age < 90) {
    age = "80s" # 80s
  } else if(age <= 90 & age < 100) {
    age = "90s" # 90s
  } else {
    age = "100s"
  }
  #print(age)
  return(age)
}
#str(tmp_data2)
tmp_data3 <- ""
for (i in 1:length(tmp_data2$age)){
  tmp_data3 <- c(tmp_data3, checkAge(tmp_data2$age[i]))
}

str(tmp_data3)
tmp <- table(tmp_data3)
hist(tmp)

################################################################
df <- read.csv("20190311/cancer.csv")
str(df)
age_data <- table(cut(df$age, breaks = (1:11)*10))
age_data
class(age_data)

rownames(age_data) <-
  c('10s','20s','30s','40s','50s','60s','70s','80s','90s','100s')
age_data
hist(age_data)



















