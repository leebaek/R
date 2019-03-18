df <- read.csv("cancer.csv")
str(df)
age_data <- table(cut(df$age, breaks = (1:11)*10))
age_data
class(age_data)

rownames(age_data) <-
  c('10s', '20s', '30s', '40s', '50s', '60s',
    '70s', '80s', '90s', '100s')
age_data
hist(age_data)

# coffee.csv 2000년 이후 폐업된 매장의 정보를 
# 출력하시오.

rm(list=ls())
df <- read.csv("coffee.csv")
head(df)

df[which(df$stateOfbusiness == "폐업 등" &
           df$yearOfStart > 2000), ]

# 전국 커피숍 년도별 개업건수를 출력하시오. 
df2 <- table(df$yearOfStart)
df2
#range(df$yearOfStart)
class(df2)
df2_1 <- as.data.frame(df2)
df2_1
qplot(df2_1$Var1, df2_1$Freq)
colnames(df2_1) <- c('title', 'qty')
colnames(df2_1)
# 전국 커피숍 년도별 폐업건수를 출력하시오.
df3 <- table(df[which(df$stateOfbusiness == "폐업 등"),15])
class(df3)
df3_1 <- as.data.frame(df3)
df3_1
qplot(df3_1$Var1, df3_1$Freq)





